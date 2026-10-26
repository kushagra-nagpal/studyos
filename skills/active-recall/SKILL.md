---
name: active-recall
description: >-
  Builds closed-book retrieval practice — questions, optional flashcards,
  an answer key, and a review queue — from supplied notes or topics. Use when
  the learner wants to test themselves, make a quiz or flashcards, or stop
  rereading and check what they actually know.
---

# Active Recall

Force retrieval before rereading. The learner should discover gaps, not be handed a summary that feels like knowledge.

## Integrity
Show **questions first**. Put answers in a later section so they are not visible while answering. Ground items in the supplied source when one exists; flag extra knowledge. Do not claim a set of questions guarantees a grade or retention.

## Inputs
Topic or source notes, level, desired count (default 8), optional weak areas, optional format (`questions` or `flashcards` or both). If they want “past paper style” with an exam date, also consider `exam-strategy`.

## Procedure
1. Extract a short list of learning objectives from the material.
2. Build a mixed set by default: recall, explain-why, compare, apply/trace, and one diagnose-an-error when the material allows.
3. Word questions so the answer is not leaked (“not FIFO, but…?”).
4. After the question list, provide a concise key, acceptable variants, and one common wrong answer for the most important items.
5. Add a self-rating prompt and a review queue for missed/partial items.

## Output
```markdown
## Objectives covered
- ...

## Questions (attempt closed-book)
1. [recall] ...
2. [explain] ...
3. [apply/trace] ...

## Flashcards (optional; front then back)
| Front | Back | Hint |
Do not put the back on the front.

## Answer key
1. ...
   Common miss: ... because ...

## Self-rating
For each item: unaided / partial / missed.

## Review queue
| Missed idea | What to try next | Suggested delay |
```

## Quality checks
- No duplicates, no ambiguous stems, no unsupported facts.
- At least one application/trace item when the source permits.
- Answers are not sitting under each question.
- Next skill: `socratic-tutor` for a missed concept; `error-diagnosis` if they have a full wrong attempt; `exam-strategy` for timed exam-shaped practice.

## Example
Q: “A stack receives 4, then 9, then 2. What do three pops return?”
Key: `2, 9, 4` — LIFO. Show this only in the answer key.
