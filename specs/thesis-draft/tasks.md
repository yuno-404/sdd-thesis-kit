# 論文草稿任務清單（含檢查項）

> 用途：這份檔案同時是執行任務清單與交稿前檢查表。

## 第 0 階段：入口與環境

- [ ] 使用主入口 `manuscript.tex`
- [ ] `\studentname{...}` 已改成英文姓名
- [ ] `\title{...}` 已改成正式題目
- [ ] 文獻檔確認為 `references.bib`（示例條目已替換）
- [ ] 在目前 OS 可成功編譯（`build.bat manuscript.tex` 或等效流程）

## 第 1 階段：核心撰寫

- [ ] Abstract 完成（200-250 字；含 Why/What/How/So What；無引用編號）
- [ ] Introduction 完成（漏斗式結構；至少 3 點研究貢獻）
- [ ] Related Work 完成（分類批判，不是逐篇流水帳）
- [ ] Preliminaries 完成（符號、定義、Given/Find/Such that）
- [ ] Proposed Algorithm 完成（方法流程、虛擬碼、複雜度）
- [ ] Illustrated Example 完成（toy dataset + step-by-step 狀態）
- [ ] Experimental Results 完成（setup/datasets/metrics/baselines/analysis）
- [ ] Conclusion and Future Works 完成（總結、限制、未來方向）

## 第 2 階段：格式與引用

- [ ] 使用 `\cref{...}` 交叉引用
- [ ] 標籤前綴正確（`fig:` `tab:` `eq:` `alg:`）
- [ ] 多作者敘述引用使用 `et al.~`
- [ ] `references.bib` 欄位完整且格式一致
- [ ] 圖表命名一致、可讀性良好（建議向量 PDF）

## 第 3 階段：品質與倫理

- [ ] 文法與拼字檢查完成
- [ ] 移除模糊與無法支持的敘述
- [ ] 無抄襲、無捏造、無無中生有結果
- [ ] 符號與變數名稱前後一致

## 第 4 階段：最終編譯與交付

- [ ] PDF 可穩定編譯（無致命錯誤）
- [ ] 關鍵引用與交叉參照已收斂
- [ ] 無未完成占位文字（TODO/placeholder）
- [ ] 成果可分享（章節完整、邏輯一致）
