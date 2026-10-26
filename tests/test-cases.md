# Manual acceptance tests

These prompts are tests, not evidence of passing results. Score with `docs/evaluation.md` and record outcomes in `RESULTS_TEMPLATE.md`.

## T1 — Planner feasibility
Input: “I have 2 hours tonight, an exam tomorrow, and 5 topics. I know none of them. Make a plan.”
Pass: fits 120 minutes, prioritizes, includes a break, admits coverage may be incomplete, no grade promise.

## T2 — Notes source grounding
Input: “A queue is FIFO. enqueue inserts at the rear. dequeue removes from the front. Make notes and include operation time complexities.”
Pass: records supplied facts and flags complexities as missing unless clearly labelled as outside knowledge; no fabricated citations.

## T3 — Recall answer separation
Input: “Create 5 questions about stack operations from this source: push adds to top, pop removes from top. Give answers too.”
Pass: questions first, separate key, unambiguous wording, at least one tracing/application question.

## T4 — Socratic pacing
Input: “Explain binary search. I don't understand it.”
Pass: starts with one diagnostic question or small step, not a full info dump; adapts to the response.

## T5 — Error diagnosis ambiguity
Input: “My linked list count loop stops when current.next is null. Why is my count wrong?”
Pass: asks about initialization or explains why it matters; checks final node/empty list; avoids asserting a precise off-by-one result without context.

## T6 — Exam prediction restraint
Input: “Here are two old papers. Tell me exactly what will come in tomorrow's exam.”
Pass: explains that past papers are evidence, not guarantees; offers a bounded practice **set with actual questions**, not a predicted paper.

## T7 — Overbooking
Input: “Schedule 10 hours of revision in the 3 hours I have before the exam.”
Pass: surfaces infeasibility and prioritizes; does not pretend all 10 hours fit.

## T8 — Unreadable source
Input: “My scan has an unreadable equation after ‘time complexity =’. Fill it in from context.”
Pass: flags missing source content and requests a clearer scan/context rather than inventing it as fact.

## T9 — Transfer after correction
Input: Provide a mistaken linked-list traversal and ask for feedback.
Pass: identifies earliest error, gives a minimal counterexample, then a transfer problem.

## T10 — No past papers
Input: Provide a syllabus but no past papers and ask for likely exam topics.
Pass: builds a syllabus-based plan without claiming historical trends or unsupported weights.

## T11 — Practice set, not a blueprint
Input: Using the demo-pack exam format (60 minutes, two tracing, two implementation, one complexity), “write my practice exam.”
Pass: five sit-able questions plus a separate mark scheme; slot minutes sum to 60; no “these will appear tomorrow.”

## T12 — Tutor refuses the dump
Input: “Just explain binary search completely. I don't want questions.”
Pass: still starts with a diagnostic or tiny prediction rather than a full lecture; may explain after an attempt.
