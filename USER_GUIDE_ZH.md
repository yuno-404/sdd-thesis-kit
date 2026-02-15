# 使用者撰寫手冊

本手冊只講「怎麼寫、怎麼做」。

## 0. 先記住一件事

- 主入口只有一個：`manuscript.tex`
- 實際內容寫在：`chapters/*.tex`

一句話：`manuscript.tex` 負責組裝，`chapters/*.tex` 負責正文。

## 1. 第一次開啟後要做什麼

1. 開啟 `manuscript.tex`
2. 修改基本欄位
   - `\studentname{Your English Name}`
   - `\title{Your Paper Title}`
3. 直接在 `manuscript.tex` 內撰寫摘要
4. 不要改 `\input{...}` 行（這些是章節掛載）

## 2. 每一章要在哪裡寫

- Introduction -> `chapters/01-introduction.tex`
- Background and Preliminaries -> `chapters/02-background-preliminaries.tex`
- Proposed Algorithm -> `chapters/03-proposed-algorithm.tex`
- An Illustrated Example -> `chapters/04-illustrated-example.tex`
- Experimental Results -> `chapters/05-experimental-results.tex`
- Conclusion and Future Works -> `chapters/06-conclusion-future-work.tex`

## 3. 日常寫作流程（建議）

1. 先完成 Abstract 與 Introduction
2. 補齊 Related Work / Preliminaries
3. 完成方法章（含 pseudocode 與複雜度）
4. 補示例章與實驗章
5. 最後寫結論、限制與未來工作
6. 交稿前對照 `specs/thesis-draft/tasks.md` 逐項勾選

## 4. 存檔自動編譯

- 專案已設定 `onSave` 自動編譯
- 在 `chapters/*.tex` 編輯時，因為有 TeX root 設定，會自動用 `manuscript.tex` 編譯

macOS 補充：

- `Command + S` 就是 Save，所以理論上會直接觸發自動編譯
- 但前提是 `.vscode/settings.json` 必須是 mac 版本設定
- 請先在專案根目錄執行：`./switch-vscode-env.sh mac`
- 然後在 VS Code 執行：`Developer: Reload Window`

若沒有自動編譯：

1. 確認是用 VS Code 的 Open Folder 開整個專案
2. 確認已安裝 `LaTeX Workshop`
3. 執行 `Developer: Reload Window`

## 5. 引用與參照怎麼做

- 文獻來源：`references.bib`
- 在正文使用 `\cite{...}` 或敘述式引用（多作者可用 `et al.~`）
- 交叉參照使用 `\cref{...}`
- label 前綴使用：`fig:` `tab:` `eq:` `alg:`

參考示例：

- 章節示例主檔：`examples/chapter_reference_main.tex`
- 章節示例內容：`examples/chapters/*.example.tex`

## 6. 想快速起稿

可從模板複製骨架：

- `templates/chapters/*.template.tex`

建議做法：把模板內容複製到對應的 `chapters/*.tex` 再填寫。

對應關係（常用）：

- `templates/chapters/01-introduction.template.tex` -> `chapters/01-introduction.tex`
- `templates/chapters/02-background-preliminaries.template.tex` -> `chapters/02-background-preliminaries.tex`
- `templates/chapters/03-proposed-algorithm.template.tex` -> `chapters/03-proposed-algorithm.tex`

## 7. 需要單一檔案投稿時

若投稿系統要求單一 `.tex`，先照常寫分章，再輸出單檔：

```bash
export-single.bat manuscript.tex manuscript_single.tex
```

或 PowerShell：

```bash
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/export-single.ps1 -Source manuscript.tex -Output manuscript_single.tex
```

補充：`scripts/` 放的是自動化工具，不是正文內容。你平常仍然只編輯 `manuscript.tex` 與 `chapters/*.tex`。

## 8. 最後提交前檢查

- 規範主來源：`specs/rules/writing-constraints.md`
- 任務與檢查：`specs/thesis-draft/tasks.md`

至少確認：

- Abstract 200-250 字且回答 Why/What/How/So What
- Introduction 有 3+ 研究貢獻
- 方法章有 pseudocode + time/space complexity
- 實驗章有 setup/datasets/metrics/baselines + 原因分析
- 結論章有 limitations + future work
