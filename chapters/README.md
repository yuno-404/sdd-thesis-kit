# Chapters (Optional Split Mode)

> 中文提示：這個資料夾放各章節內容，主檔 `manuscript.tex` 會用 `\input` 自動組合。

This directory is optional.

Use it if you prefer a chapter-split workflow similar to common thesis templates.
The primary entry file for this mode is `manuscript.tex`.

## How to use

（中文步驟）

1. Move each major section body into the matching file in this folder.
2. In `manuscript.tex`, keep section titles and include chapter bodies with `\input{chapters/<file>}`.
3. Keep section titles in the main file, and keep content in chapter files.

Example:

```tex
\section{Introduction}
\input{chapters/01-introduction}
```

## Files

- `01-introduction.tex`
- `02-background-preliminaries.tex`
- `03-proposed-algorithm.tex`
- `04-illustrated-example.tex`
- `05-experimental-results.tex`
- `06-conclusion-future-work.tex`
