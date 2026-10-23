# 图标来源（Lucide）

本站图标统一使用 [Lucide](https://lucide.dev) 图标库（ISC 许可证，全文见同目录 `LUCIDE-LICENSE`，与官方仓库 LICENSE 一致）。

- `lucide/<name>.svg`：从 Lucide 官方仓库 `github.com/lucide-icons/lucide` 的 `icons/` 目录取的 SVG 原件，仅在模板内联时由 Hugo partial `layouts/partials/goclub/icon.html` 去掉 width/height 以便 CSS 控制尺寸，其余路径数据未改。
- 本目录根下的 `chevron-right.svg`、`calendar.svg`、`edit.svg`、`backward.svg`、`forward.svg`、`menu.svg`、`toc.svg`、`translate.svg`：同为 Lucide 原件的副本，文件名沿用 hugo-book 主题 `docs/icon` partial 的约定（站点 assets 优先于主题 assets 同名文件，达到换图不改主题）。其中 `edit.svg` 的内容是 Lucide `pencil`，`backward/forward` 是 `arrow-left/arrow-right`，`toc` 是 `list`，`translate` 是 `languages`。

## 品牌标

站点品牌标（顶栏左上角原「GC」字标）已改为 Lucide `book-open`：原件在 `lucide/book-open.svg`，经 `goclub/icon` partial 内联到 `layouts/partials/docs/brand.html` 的 `.book-brand-mark`（品牌色 #646cff 底白图标）。标签页图标 `static/favicon.svg` 同为 book-open 图形（品牌色圆角方块+白色线条），PNG 版 `favicon.png` 保留作 apple-touch-icon 与旧浏览器兜底。

## 首页栏目卡片图标

首页栏目卡片按栏目名映射 Lucide 图标（`layouts/index.html` 内按标题关键字选择）：面试真题 `messages-square`、八股总结 `book-open`、资源荟萃 `folder-open`、配套文章 `file-text`、项目学习 `code`、技术博客 `pen-line`、求职就业 `briefcase`、贡献者 `users`，未命中时用 `library`。原件同样在 `lucide/` 目录。

## 例外

顶栏的 GitHub 标志不是 Lucide：Lucide 现行版本已移除全部品牌图标（官方仓库 `icons/github.svg` 不存在），故该处保留原有 GitHub 官方 octocat SVG（填充式），不要用其他图形冒充。
