# Chapter Routing for Scoped Edits

Use this file to route requests to a specific chapter so the agent does not over-read or over-edit.

## Prompt Pattern

Use this prefix in your request:

`[Scope] Section=<section name>; Mode=<Draft|Review|Rewrite>; Goal=<what to change>; Constraints=<optional>`

Examples:

- `[Scope] Section=Introduction; Mode=Rewrite; Goal=make research gap sharper`
- `[Scope] Section=Experimental Results; Mode=Review; Goal=check setup/datasets/metrics/baselines`
- `[Scope] Section=Conclusion and Future Works; Mode=Draft; Goal=add limitations and future directions`

## Routing Table (6-Chapter View)

1. Introduction
2. Background and Preliminaries
3. Proposed Algorithm
4. An Illustrated Example
5. Experimental Results
6. Conclusion and Future Works

Abstract is treated as a global mandatory section and can be requested directly with:

`[Scope] Section=Abstract; ...`

## Agent Read Scope Rules

For scoped edits, read in this order:

1. Global required files: `specs/rules/writing-constraints.md`, `wmt-template.sty`, `README.md`, `specs/thesis-draft/tasks.md`
2. Target-local context in `manuscript.tex`:
   - target section
   - 1-2 paragraphs before and after
3. Section constraints in `specs/thesis-draft/chapters.md`

Do not rewrite other sections unless user explicitly asks for full-paper revision.
