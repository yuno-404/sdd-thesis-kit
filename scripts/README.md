# Scripts

這個資料夾放「由內容到產出」的自動化腳本，例如：

- 由 `specs/` 或 toy data 產生圖表
- 由章節資料生成表格或段落草稿
- 將分章稿件輸出成單一 `.tex`

## 目前可用

- `export-single.ps1`: 將 `manuscript.tex` 的 `\input{...}` 展開為單一檔案。

## 何時使用

- 投稿系統要求單一 `.tex`
- 需要把章節稿打包給他人審閱
- 想保留一份「可攜式」整合版本

範例：

```bash
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/export-single.ps1 -Source manuscript.tex -Output manuscript_single.tex
```

Windows 一鍵（建議）：

```bash
export-single.bat manuscript.tex manuscript_single.tex
```

## 建議後續新增

- `gen-toy-figures.py`: 從 toy data 產生步驟圖
- `gen-metrics-table.py`: 從實驗結果 CSV 產生 LaTeX 表格
