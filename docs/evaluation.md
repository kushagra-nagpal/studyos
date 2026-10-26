# Evaluation guide

StudyOS ships with manual acceptance tests, not an automated benchmark. The purpose is to catch obvious failure modes before making public claims.

## How to run
1. Use the exact prompt in `tests/test-cases.md` with the matching skill instructions.
2. Save the output, redacting personal information.
3. Score each criterion 0 = fail, 1 = partial, 2 = pass.
4. Record model/version, date, prompt, output, and corrections in `tests/RESULTS_TEMPLATE.md`.
5. Repeat after changes. Keep inputs consistent when comparing assistants.

## Shared rubric

| Criterion | 0 | 1 | 2 |
|---|---|---|---|
| Grounding | Invents unsupported details | Some uncertainty labelled | Claims traceable; gaps flagged |
| Actionability | No next action | Vague/incomplete | Specific and usable |
| Constraint handling | Ignores constraints | Handles some | Honors constraints and asks about material gaps |
| Learning value | Gives away answer/passive dump | Mixed | Supports retrieval, explanation, or transfer |
| Clarity | Hard to scan | Mostly clear | Structured and consistent |

Maximum 10. Suggested internal quality gate: 8/10, with no zero for grounding or constraint handling. This is a project quality gate, not a scientific measure of learning outcomes.

## Workflow-specific checks
- Planner: topic coverage, feasible time totals, breaks and buffers.
- Notes: uncertainty flagged, no invented citations.
- Active recall: correct answer key, varied question types, no answer leakage.
- Socratic tutor: one question at a time, no premature solution dump.
- Error diagnosis: earliest error, clear reason, transfer task.
- Exam strategy: past-paper frequency never treated as prediction.
