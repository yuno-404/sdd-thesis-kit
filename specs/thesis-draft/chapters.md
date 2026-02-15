# Section-Scoped SDD Constraints

This file defines chapter-level SDD constraints so edits can be targeted instead of reading/revising the whole paper.

## C1. Introduction

- Goal: funnel structure (background -> gap -> approach -> contributions)
- Must include: at least 3 research contributions
- Must avoid: trivial implementation tasks as contributions
- Acceptance:
  - clear problem motivation
  - explicit research gap with reasons
  - 3+ non-trivial contributions

## C2. Background and Preliminaries

- Goal: show domain mastery and define formal problem setup
- Must include:
  - categorized related work with critique
  - notation/definitions and formal statement (Given/Find/Such that)
- Acceptance:
  - related work is category-based, not paper-by-paper listing
  - symbols are consistent with later method section

## C3. Proposed Algorithm

- Goal: explain method unambiguously
- Must include:
  - system overview and data flow
  - core strategy details
  - pseudocode (`algorithm` + `algpseudocode`)
  - time and space complexity
- Acceptance:
  - variable names consistent with preliminaries
  - complexity analysis is explicit

## C4. An Illustrated Example

- Goal: make algorithm behavior easy to verify
- Must include:
  - toy dataset
  - step-by-step state transitions
- Acceptance:
  - transitions can be followed without reading code

## C5. Experimental Results

- Goal: provide objective, reproducible evidence
- Must include:
  - setup (CPU/RAM/OS/toolchain)
  - datasets
  - metrics
  - baselines
  - causal analysis (why results happen)
- Acceptance:
  - analysis explains causes, not only observations

## C6. Conclusion and Future Works

- Goal: close with value, honesty, and next steps
- Must include:
  - high-level summary
  - limitations
  - future directions
- Acceptance:
  - limitations are concrete and realistic
  - future work is technically actionable

## Global Rules for Any Chapter

- Use `\cref{...}` for cross-references when needed
- Use label prefixes: `fig:`, `tab:`, `eq:`, `alg:`
- No fabricated results or unsupported claims
- Keep wording formal, concrete, and explainable by author
