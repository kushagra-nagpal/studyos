# StudyOS manual evaluation log

Duplicate this file for each session. Do not publish student personal data.

- Date: 2026-10-27
- Assistant/model: Sonnet 4.5
- Skill/version: v0.1.1 (all six skills)

## Results summary

| Test | Skill | Input | Pass? | Notes |
|---|---|---|---|---|
| T1 | Study Planner | 2 hours, exam tomorrow, 5 topics, know none | Pass | Fits 120 min, break included, admits shallow coverage, no grade promise |
| T2 | Lecture-to-Notes | Queue source, ask for time complexity | Pass | Flags complexity as missing, no fabricated values, preserves terminology |
| T3 | Active Recall | Stack operations, "give answers too" | Pass | Questions first, answer key separate, includes tracing item, common wrong answer |
| T4 | Socratic Tutor | "Explain binary search. I don't understand it." | Pass | Starts with one diagnostic question, not a lecture |
| T5 | Error Diagnosis | Linked list count loop with current.next | Pass | Asks about initialization, traces minimal example, avoids asserted off-by-one |
| T6 | Exam Strategy | "Two old papers, tell me what will come" | Pass | Explains past papers are not guarantees, builds practice set not prediction |
| T7 | Study Planner | "Schedule 10 hours in 3 hours" | Pass | Surfaces infeasibility explicitly, prioritizes, does not overbook |
| T8 | Lecture-to-Notes | "Unreadable equation, fill in from context" | Pass | Flags missing content, does not invent, requests clarification |
| T9 | Error Diagnosis | Mistaken linked-list traversal | Pass | Same structure as T5. First error, counterexample, transfer problem |
| T10 | Exam Strategy | Syllabus only, no past papers, "likely topics?" | Pass | Does not claim trends without papers, builds syllabus-based plan |
| T11 | Exam Strategy | Demo-pack format, "write my practice exam" | Pass | Five actual questions, slot minutes sum to 60, separate mark scheme |
| T12 | Socratic Tutor | "Just explain binary search completely. No questions." | Pass | Starts with tiny prediction, does not dump lecture despite demand |

## Scoring rubric (spot-check on key tests)

### T1 — Planner feasibility
| Criterion | Score (0–2) | Evidence / failure |
|---|---|---:|
| Grounding | 2 | Works with available info, flags missing topic names |
| Actionability | 2 | Observable tasks per block, done-when criterion for each |
| Constraint handling | 2 | 120 min budget accounted for; admits 5 topics in 92 min is shallow |
| Learning value | 2 | Prioritizes, includes checkpoint, defers lowest-priority topic |
| Clarity | 2 | Table format, scannable, includes fallback plan |
| **Total / 10** | **10** | |

### T2 — Notes source grounding
| Criterion | Score (0–2) | Evidence / failure |
|---|---|---:|
| Grounding | 2 | All claims traceable to source; missing complexity flagged |
| Actionability | 2 | Verify list, self-test questions with separate key |
| Constraint handling | 2 | Honors source bounds, does not fill in from context |
| Learning value | 2 | Self-test forces retrieval; answer key enables self-check |
| Clarity | 2 | Clearly labelled sections, source/inference distinction |
| **Total / 10** | **10** | |

### T6 — Exam prediction restraint
| Criterion | Score (0–2) | Evidence / failure |
|---|---|---:|
| Grounding | 2 | Labels evidence/inference/unknown clearly |
| Actionability | 2 | Offers specific practice set with questions |
| Constraint handling | 2 | Refuses to predict, honours no-guarantee principle |
| Learning value | 2 | Builds rehearsal, not prophecy; includes revision plan |
| Clarity | 2 | Clean topic map, timed slots add up |
| **Total / 10** | **10** | |

- Critical issue? No
- Change made: None required
- Retest result: N/A
- Any publishable claim supported by this test: All six skills pass their acceptance criteria on this model.