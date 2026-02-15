# Spec: Thesis Draft Design

## Document Architecture

The paper should be built section-by-section in this order:

1. Abstract
2. Introduction
3. Background and Preliminaries
4. Proposed Algorithm
5. Illustrated Example
6. Experimental Results
7. Conclusion and Future Works

## Writing Strategy by Section

### Abstract

- Sentence plan: context -> problem -> approach -> results -> implications.
- Keep concrete and numeric where possible.

### Introduction

- Paragraph 1: broad context and relevance.
- Paragraph 2: current gap and why existing methods fail.
- Paragraph 3: high-level approach.
- Paragraph 4: contribution bullets (3+).

### Background / Related Work / Preliminaries

- Group prior work by method families.
- End each group with limitation statements.
- Define notation before method section.

### Proposed Algorithm

- Start with system overview and data flow.
- Explain core mechanism with formulas if needed.
- Provide pseudocode with consistent naming.
- End with time/space complexity.

### Experiments

- Present setup and reproducibility details first.
- Then compare against baselines by metric.
- Explain why trends happen, not only what happens.

### Conclusion

- Summarize value at a higher level.
- State limitations explicitly.
- Provide realistic future work directions.

## Traceability

Each section draft should map to corresponding requirement IDs in `requirements.md`.
