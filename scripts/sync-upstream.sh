#!/usr/bin/env bash
# 手动同步上游内容（与 .github/workflows/sync-upstream.yml 同逻辑）。
#
# 用法（在干净的 checkout 里，仓库根目录执行）：
#   bash scripts/sync-upstream.sh
#
# 同步铁律（用户 2026-11-07 亲定）：Pro 站只做增量——
#   上游更新的内容跟进更新，上游新增的栏目跟着增加；
#   上游删了什么我们不删，只加不减。
# 因此本脚本只应用上游的新增/修改（diff-filter=AMT），对上游删除的
# 文件只打印、不删除。
#
# 同步范围（白名单）：content/、data/jobs/、data/contributors.json、
# data/maintainers.json。前端（layouts/、assets/、static/、themes/、
# hugo.toml、scripts/、.github/）永远不同步。
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
mapfile -d '' -t apply_files < <(git -c core.quotepath=false diff -z --name-only --diff-filter=AMT "$base" upstream/main -- content data/jobs data/contributors.json data/maintainers.json)

# 只加不减：上游删除的文件只记录、不删除，本站保留。
mapfile -d '' -t kept_files < <(git -c core.quotepath=false diff -z --name-only --diff-filter=D "$base" upstream/main -- content data/jobs data/contributors.json data/maintainers.json)
if [[ ${#kept_files[@]} -gt 0 ]]; then
  echo "上游删除、本站按只加不减保留的文件（${#kept_files[@]} 个）："
  printf '  保留：%s\n' "${kept_files[@]}"
fi

# 白名单缺口扫描：上游在 content/ 或 data/ 下的新增/修改中，
# 不在白名单内的列出来告警（不失败），提醒人工决定是否扩白名单。
mapfile -d '' -t all_changed < <(git -c core.quotepath=false diff -z --name-only --diff-filter=AMT "$base" upstream/main -- content data)
gap="$(printf '%s\n' "${all_changed[@]}" | grep -Ev '^(content/|data/jobs/|data/contributors\.json$|data/maintainers\.json$)' || true)"
if [[ -n "$gap" ]]; then
  echo "白名单缺口告警：上游下列内容路径文件不在同步白名单内，本次未同步，请人工确认是否扩白名单："
  echo "$gap"
fi

if [[ ${#apply_files[@]} -eq 0 ]]; then
  echo "上游新提交均不在内容路径内，本次不同步、不推送。"
  exit 0
fi

git checkout upstream/main -- "${apply_files[@]}"

# 防守：暂存区只允许内容路径，任何白名单外文件出现即失败、不推送
staged="$(git -c core.quotepath=false diff --cached --name-only)"
unexpected="$(printf '%s\n' "$staged" | grep -Ev '^(content/|data/jobs/|data/contributors\.json$|data/maintainers\.json$)' || true)"
if [[ -n "$unexpected" ]]; then
  echo "同步产生了白名单外改动，拒绝提交：" >&2
  echo "$unexpected" >&2
  git reset -q
  exit 1
fi

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
