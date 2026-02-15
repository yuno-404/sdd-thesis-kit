# Spec: Thesis Draft Requirements

## Goal

Produce a thesis draft that is compilable and compliant with project rules in `specs/rules/writing-constraints.md`.

## Functional Requirements

1. The draft must compile with no fatal LaTeX errors.
2. Abstract must be 200-250 words and answer Why/What/How/So What.
3. Abstract must not contain citation numbers.
4. Introduction must follow funnel structure and include at least 3 research contributions.
5. Related Work must be categorized and critical, not paper-by-paper narration.
6. Preliminaries must define notation and formal problem statement.
7. Method section must include pseudocode and complexity analysis.
8. Experiments must include setup, datasets, metrics, baselines, and causal analysis.
9. Conclusion must include limitations and future work.
10. Cross-references and label prefixes must follow project conventions.

## Non-Functional Requirements

1. Writing quality: no obvious grammar/spelling errors.
2. Academic integrity: no plagiarism, no fabricated data.
3. Consistency: symbols and variable names remain consistent across sections.

## Acceptance Criteria

- `specs/thesis-draft/tasks.md` is fully satisfied.
- Build succeeds using `build.bat manuscript.tex` or manual equivalent.
- No unresolved TODO placeholders remain in final submission branch.
