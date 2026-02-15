# AGENTS.md

This file defines required behavior for AI agents working in this repository.
Primary goal: produce thesis drafts and reviews that strictly follow repository writing constraints.

## 1) Priority Order

When rules conflict, follow this order:

1. `specs/rules/writing-constraints.md` (highest)
2. This `AGENTS.md`
3. General LaTeX writing conventions

## 2) Required Files to Read First

At the start of every task, read at least:

- `specs/rules/writing-constraints.md`
- `wmt-template.sty`
- `README.md`
- `specs/thesis-draft/tasks.md`

Default editing target is `manuscript.tex` unless user explicitly asks for another entry file.

## 3) Non-Negotiable Writing Rules (from `specs/rules/writing-constraints.md`)

### Abstract

- 200-250 words
- Must answer: Why / What / How / So What
- No citation numbers (e.g., `[1]`)
- No vague claims (e.g., "very good", "much faster"); use concrete wording, ideally with numbers

### Introduction

- Funnel structure: background -> gap -> approach -> contributions
- At least 3 research contributions
- Contributions must be academic/technical, not trivial implementation tasks
- For multi-author narrative citation, use `et al.~`

### Related Work / Preliminaries

- Related Work must be categorized and critical (not paper-by-paper listing)
- Preliminaries must define notation, structures, and formal problem statement (Given / Find / Such that)

### Proposed Algorithm

- Include system overview
- Explain core strategy
- Include pseudocode using `algorithm` + `algpseudocode`
- Keep variable names consistent with definitions
- Include time and space complexity analysis

### Example / Experiments / Conclusion

- Include illustrated toy example with step-by-step states
- Experiments must include setup, datasets, metrics, baselines
- Analysis must explain causes, not only observations
- Conclusion must include limitations and future work

### Citation / Label Rules

- Prefer `\cref{...}` for cross-references
- Label prefixes must be: `fig:`, `tab:`, `eq:`, `alg:`
- Prefer PDF vector figures (R/Python/Matlab generated)

### Quality / Ethics

- No plagiarism
- No fabrication/hallucinated results
- No unsupported claims
- Writing must be explainable by the author
- Avoid obvious grammar/spelling mistakes

## 4) Task Modes

### A) Draft Mode

Use when user asks to write a new section/paragraph.

Output must:

- Provide directly pasteable LaTeX first
- Keep paragraph intent explicit (background/gap/method/contribution)
- For Introduction: include 3+ contributions
- For Abstract: enforce 200-250 words

### B) Review Mode

Use when user asks to check compliance.

Output format per section:

- `Pass` / `Fail`
- `Issues` (rule violations)
- `Fix` (pasteable replacement text)

### C) Rewrite Mode

Use when user asks for clearer/more academic rewrite.

Rules:

- Preserve original meaning
- Improve logic and academic tone
- Do not add unprovided experiment numbers

## 5) Agent SOP

1. Classify task mode: Draft / Review / Rewrite
2. Read local context around target section (at least 1-2 surrounding paragraphs)
3. Apply `specs/rules/writing-constraints.md` constraints
4. Produce output
5. Self-check with `specs/thesis-draft/tasks.md`
6. Return final text + explicit uncertainty/risk (if any)

## 6) Definition of Done

Task is done only if all are true:

- Compilable LaTeX (no fatal errors)
- Section-specific rules satisfied (especially Abstract/Introduction)
- Citation/label conventions are consistent
- No obvious ethics risk

## 7) Build / Verification Commands

Windows:

```bash
build.bat manuscript.tex
```

Cross-platform manual:

```bash
pdflatex manuscript.tex
bibtex manuscript
pdflatex manuscript.tex
pdflatex manuscript.tex
```

## 8) Prohibited Behavior

- Do not invent results or references
- Do not leave template demo paragraphs in final draft
- Do not present trivial engineering tasks as academic contributions
- Do not ignore `specs/rules/writing-constraints.md` instructions

## 9) Output Templates

When user asks to "write":

1. Purpose + target section
2. Pasteable LaTeX
3. 1-2 line compliance self-check

When user asks to "review full paper":

- Report by section: Abstract / Intro / Related / Method / Experiments / Conclusion
- For each: `Pass/Fail + Issues + Fix`

## 10) File Roles

- `README.md`: quick start for humans
- `AGENTS.md`: execution contract for AI agents

## 11) Section-Scoped SDD Workflow (for targeted edits)

When user requests editing a specific chapter/section, use scoped reading and scoped writing:

1. Always read mandatory global files first:
   - `specs/rules/writing-constraints.md`
   - `wmt-template.sty`
   - `README.md`
   - `specs/thesis-draft/tasks.md`
2. Then read only target-local context:
   - target section in `manuscript.tex`
   - 1-2 surrounding paragraphs before/after that section
   - section-specific SDD docs under `specs/thesis-draft/chapters.md` and `specs/thesis-draft/chapter-routing.md`
3. Do not rewrite untouched sections unless user explicitly asks for full-paper revision.
4. In final response, explicitly state scope as: `Edited scope: <section>`.

Recommended user prompt pattern for precise routing:

`[Scope] Section=<section name>; Mode=<Draft|Review|Rewrite>; Goal=<what to change>; Constraints=<optional>`

Example:

`[Scope] Section=Experimental Results; Mode=Rewrite; Goal=improve causal analysis; Constraints=do not change tables`
