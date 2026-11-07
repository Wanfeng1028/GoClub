#!/usr/bin/env python3
"""首页/顶栏栏目漂移检查（2026-11-08 网站推荐教训）。

背景：同步只同步 content/、data/，不同步 layouts/。但首页卡片
（layouts/index.html 的硬编码 slice）与顶栏
（layouts/partials/goclub/topbar.html 的两个硬编码 slice）是
本站自己的前端，不会自动跟进上游新栏目。2026-11-07 上游新增
网站推荐栏目，内容文件同步了，首页和顶栏却没有，漏到用户发现。

本脚本在内容同步后运行：content/docs/ 下每个顶级栏目（有
_index.md 的子目录）必须出现在上述文件的硬编码列表里（一个
文件内多个 slice 行算在一起）；缺失的按上游 section-links.html
的顺序（$primary + $more）插到前一个栏目所在的那个 slice 行里，
插不进去的追加到最后一个 slice 行末尾，并大声打印出来。

用法：python3 scripts/drift-check.py <上游顺序文件>
  上游顺序文件：每行一个栏目路径，如 docs/websites（不带前导 /）。
  文件不存在或为空时，按本地栏目名字母顺序处理。
只改 slice 行里的引号列表，不动文件其他任何内容。
"""
import os
import re
import sys

INDEX = "layouts/index.html"
TOPBAR = "layouts/partials/goclub/topbar.html"
SLICE_RE = re.compile(r'(\{\{\s*range slice\s+)((?:"[^"]+"\s*)+)(\}\})')


def parse_slice(text):
    return re.findall(r'"([^"]+)"', text)


def render_slice(entries):
    return " ".join('"%s"' % e for e in entries)


def fix_file(path, sections, upstream_order):
    """修一个文件的全部 slice 行，返回补上的栏目列表。"""
    with open(path, encoding="utf-8") as f:
        text = f.read()
    matches = list(SLICE_RE.finditer(text))
    if not matches:
        return []
    # 各 slice 行的条目
    slices = [parse_slice(m.group(2)) for m in matches]
    present = set()
    for entries in slices:
        present.update(entries)
    missing = ["docs/" + s for s in sections if "docs/" + s not in present]
    if not missing:
        return []
    # 按上游顺序处理缺失栏目
    ordered_missing = [p for p in upstream_order if p in missing]
    ordered_missing += [p for p in missing if p not in upstream_order]
    fixed = []
    for path_entry in ordered_missing:
        # 前一个栏目在哪个 slice 行，就插到那行它后面
        pred = None
        if path_entry in upstream_order:
            idx = upstream_order.index(path_entry)
            for j in range(idx - 1, -1, -1):
                if upstream_order[j] in present:
                    pred = upstream_order[j]
                    break
        target = len(slices) - 1
        if pred is not None:
            for i, entries in enumerate(slices):
                if pred in entries:
                    target = i
                    break
            slices[target].insert(slices[target].index(pred) + 1, path_entry)
        else:
            slices[target].append(path_entry)
        present.add(path_entry)
        fixed.append(path_entry)
    # 写回：只替换 slice 行
    out = []
    last = 0
    for i, m in enumerate(matches):
        out.append(text[last:m.start()])
        out.append(m.group(1) + render_slice(slices[i]) + " " + m.group(3))
        last = m.end()
    out.append(text[last:])
    with open(path, "w", encoding="utf-8") as f:
        f.write("".join(out))
    return fixed


def main():
    order = []
    if len(sys.argv) > 1 and os.path.isfile(sys.argv[1]):
        with open(sys.argv[1], encoding="utf-8") as f:
            order = [line.strip() for line in f if line.strip()]
    docs_dir = "content/docs"
    sections = sorted(
        d
        for d in os.listdir(docs_dir)
        if os.path.isdir(os.path.join(docs_dir, d))
        and os.path.isfile(os.path.join(docs_dir, d, "_index.md"))
    )
    upstream_order = [p for p in order if p.startswith("docs/")]
    all_fixed = {}
    for path in (INDEX, TOPBAR):
        fixed = fix_file(path, sections, upstream_order)
        if fixed:
            all_fixed[path] = fixed
    if all_fixed:
        print("栏目漂移告警：以下栏目内容已同步但首页/顶栏列表里没有，已自动补上：")
        for path, fixed in all_fixed.items():
            print("  %s：%s" % (path, "、".join(fixed)))
    else:
        print("栏目漂移检查通过：首页/顶栏列表与 content/docs/ 栏目一致。")
    return 0


if __name__ == "__main__":
    sys.exit(main())
