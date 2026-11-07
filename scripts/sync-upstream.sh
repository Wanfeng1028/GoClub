#!/usr/bin/env bash
# 手动同步上游内容（与 .github/workflows/sync-upstream.yml 同逻辑）。
#
# 用法（在干净的 checkout 里，仓库根目录执行）：
#   bash scripts/sync-upstream.sh
#
# 同步铁律（用户 2026-11-07 亲定）：Pro 站只做增量——
#   上游更新的内容跟进更新，上游新增的栏目跟着增加；
#   上游删了什么我们不删，只加不减。
# 因此本脚本只应用上游的新增/修改/重命名（diff-filter=AMRT），对上游删除的
# 文件只打印、不删除。重命名按“新路径当新增、旧路径保留”处理。
#
# 同步范围（白名单）：content/、data/jobs/、data/contributors.json、
# data/maintainers.json。前端（layouts/、assets/、static/、themes/、
# hugo.toml、scripts/、.github/）永远不同步——唯一例外：首页卡片
# （layouts/index.html）与顶栏（layouts/partials/goclub/topbar.html）
# 的硬编码栏目列表由文末的“栏目漂移检查”在本地维护（只增补 slice
# 行里的栏目名，不从上游复制前端文件），见 2026-11-08 网站推荐教训。
#
# 安全措施：
#   - 要求 content/ 与 data/ 工作区干净，否则拒绝执行（避免把未完成的
#     本地改动误带进同步提交）；
#   - 暂存区只允许白名单路径，白名单外文件出现即失败、不推送；
#   - 绝不 force push。
set -euo pipefail

UPSTREAM_REPO="${UPSTREAM_REPO:-LeoninCS/GoClub}"
BRANCH="${BRANCH:-main}"

cd "$(git rev-parse --show-toplevel)"
git config user.name "Wanfeng1028"
git config user.email "wanfeng572@gmail.com"

if [[ -n "$(git status --porcelain -- content data)" ]]; then
  echo "content/ 或 data/ 工作区不干净，先提交或清理本地改动再同步。" >&2
  exit 1
fi

git remote add upstream "https://github.com/$UPSTREAM_REPO.git" 2>/dev/null || git remote set-url upstream "https://github.com/$UPSTREAM_REPO.git"
git fetch upstream main

if git merge-base --is-ancestor "upstream/main" HEAD; then
  echo "上游没有新提交，无需同步。"
  exit 0
fi

echo "上游有新提交："
git log --oneline HEAD..upstream/main | head -20

base="$(git merge-base HEAD upstream/main)"
mapfile -d '' -t apply_files < <(git -c core.quotepath=false diff -z --name-only --diff-filter=AMRT "$base" upstream/main -- content data/jobs data/contributors.json data/maintainers.json)

# 只加不减：上游删除的文件只记录、不删除，本站保留。
mapfile -d '' -t kept_files < <(git -c core.quotepath=false diff -z --name-only --diff-filter=D "$base" upstream/main -- content data/jobs data/contributors.json data/maintainers.json)
if [[ ${#kept_files[@]} -gt 0 ]]; then
  echo "上游删除、本站按只加不减保留的文件（${#kept_files[@]} 个）："
  printf '  保留：%s\n' "${kept_files[@]}"
fi

# 白名单缺口扫描：上游在 content/ 或 data/ 下的新增/修改/重命名中，
# 不在白名单内的列出来告警（不失败），提醒人工决定是否扩白名单。
mapfile -d '' -t all_changed < <(git -c core.quotepath=false diff -z --name-only --diff-filter=AMRT "$base" upstream/main -- content data)
gap="$(printf '%s\n' "${all_changed[@]}" | grep -Ev '^(content/|data/jobs/|data/contributors\.json$|data/maintainers\.json$)' || true)"
if [[ -n "$gap" ]]; then
  echo "白名单缺口告警：上游下列内容路径文件不在同步白名单内，本次未同步，请人工确认是否扩白名单："
  echo "$gap"
fi

if [[ ${#apply_files[@]} -gt 0 ]]; then
  git checkout upstream/main -- "${apply_files[@]}"
fi

# 首页/顶栏栏目漂移检查（2026-11-08 网站推荐教训）：内容同步了，
# 首页卡片与顶栏的硬编码栏目列表不会自动跟进——2026-11-07 上游
# 新增网站推荐栏目，内容到了、首页和顶栏却没有，漏到用户发现。
# 缺失的栏目按上游 section-links 顺序自动补进两个列表。
if git show upstream/main:layouts/partials/goclub/section-links.html > /tmp/goclub-upstream-section-links.html 2>/dev/null; then
  grep -o '"/docs/[^"]*"' /tmp/goclub-upstream-section-links.html | tr -d '"' | sed 's#^/##' > /tmp/goclub-upstream-order.txt
else
  : > /tmp/goclub-upstream-order.txt
fi
python3 scripts/drift-check.py /tmp/goclub-upstream-order.txt || { echo "栏目漂移检查失败，停止同步。" >&2; git reset -q; exit 1; }
git add layouts/index.html layouts/partials/goclub/topbar.html

# 防守：暂存区只允许内容路径 + 漂移检查改的两个布局文件，任何
# 白名单外文件出现即失败、不推送；布局文件只允许 slice 行改动。
staged="$(git -c core.quotepath=false diff --cached --name-only)"
unexpected="$(printf '%s\n' "$staged" | grep -Ev '^(content/|data/jobs/|data/contributors\.json$|data/maintainers\.json$|layouts/index\.html$|layouts/partials/goclub/topbar\.html$)' || true)"
if [[ -n "$unexpected" ]]; then
  echo "同步产生了白名单外改动，拒绝提交：" >&2
  echo "$unexpected" >&2
  git reset -q
  exit 1
fi
for f in layouts/index.html layouts/partials/goclub/topbar.html; do
  if git diff --cached --quiet -- "$f"; then continue; fi
  n_add="$(git diff --cached -- "$f" | grep '^+' | grep -vc '^+++')"
  n_del="$(git diff --cached -- "$f" | grep '^-' | grep -vc '^---')"
  add_ok="$(git diff --cached -- "$f" | grep '^+' | grep -v '^+++' | grep -c 'range slice')"
  del_ok="$(git diff --cached -- "$f" | grep '^-' | grep -v '^---' | grep -c 'range slice')"
  if [[ "$n_add" != 1 || "$n_del" != 1 || "$add_ok" != 1 || "$del_ok" != 1 ]]; then
    echo "布局文件 $f 的改动不是单纯的 slice 行栏目增补，拒绝提交：" >&2
    git diff --cached -- "$f" >&2
    git reset -q
    exit 1
  fi
done

if git diff --cached --quiet; then
  echo "内容路径无实际差异，无需提交。"
  exit 0
fi

if [[ ${#kept_files[@]} -gt 0 ]]; then
  git commit -m "chore: 同步上游内容（content、data/jobs 与贡献者数据）" -m "$(printf '同步文件：\n%s\n\n上游删除、本站按只加不减保留：\n%s\n' "$staged" "$(printf '%s\n' "${kept_files[@]}")")"
else
  git commit -m "chore: 同步上游内容（content、data/jobs 与贡献者数据）" -m "$(printf '同步文件：\n%s\n' "$staged")"
fi

git push origin "HEAD:$BRANCH"
echo "已推送到 $BRANCH，Cloudflare Pages 将自动重新构建部署。"
