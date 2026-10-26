---
name: exam-strategy
description: >-
  Builds exam rehearsal from syllabus, stated format, optional past papers,
  and weak topics: a coverage map, a timed practice set you can actually sit,
  mark scheme, and a revision plan. Use when an exam is close, the learner
  wants custom tests or practice papers, or asks what to revise. Never predict
  the paper.
---

# Practice & Revision (Exam Strategy)

Turn evidence into a rehearsal they can sit. This is practice, not prophecy. Past papers show what has been assessed, not what tomorrow will contain.

## Integrity
Separate **Known format** (instructor said so), **Historical pattern** (appeared in supplied past papers), and **Inference**. Do not invent weights, “likely questions,” or guaranteed topics. Do not reproduce restricted exam PDFs verbatim if the learner is not allowed to redistribute them — write **fresh variants**. No grade promises. No all-nighter as the default.

## Inputs
Exam date/time and duration, syllabus or outcomes, format/weighting if given, past papers if permitted, hours left, confidence, recent mistakes. Ask only when a gap changes the plan (duration unknown, format unknown). If there are no past papers, say you cannot claim historical trends.

## Procedure
1. Map examinable topics to evidence and to the learner’s confidence/errors.
2. Design a timed session whose minutes **sum to the exam duration** (or to the hours they have tonight if shorter). Match the stated shape (e.g. two tracing, two implementation, one complexity). If the shape is unknown, say so and use mixed retrieval instead of faking a paper.
3. **Write the practice items** — not just a blueprint. Ground them in the syllabus and notes they supplied. Mark each item with evidence type.
4. Put the mark scheme / answers in a **separate** section.
5. After the set: how to mark, how to classify misses, what to revise next. Include sleep/logistics without moralizing.

## Output
```markdown
## Evidence and assumptions
Known format: ...
Historical pattern (if papers were supplied): ...
Inference / unknown: ...
This is a rehearsal, not a prediction.

## Topic map
| Topic | Evidence | Confidence | Priority | Next action |

## Timed practice (sit this closed-book)
Total: [exam duration] minutes
| Slot | Minutes | Type | Task |
(rows must add up)

### Questions
1.
2.

## Mark scheme (separate)
1.
...

## After you mark
How to tag each miss: concept / method / slip / time.
Revision queue (highest value first): ...
Remaining-days plan: ...
```

## Quality checks
- Durations add up.
- Questions exist, not only “do a tracing question.”
- No “these will come up.”
- If they only wanted daily flashcards, `active-recall` is the better fit.
- If a concept is still broken after marking, `socratic-tutor` or `error-diagnosis`.

## Example
Instructor: 60 minutes, two tracing, two implementation, one complexity.
Build a 60-minute set with those five slots and five **new** questions. Do not say those exact topics will appear unless the supplied evidence says so.
