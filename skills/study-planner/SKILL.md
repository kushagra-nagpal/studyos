---
name: study-planner
description: >-
  Turns a syllabus, exam dates, topic confidence, and real calendar blocks into
  a feasible study plan with priorities, breaks, buffers, and a catch-up rule.
  Use when the learner has limited hours, upcoming exams, or asks to schedule
  revision, milestones, or what to study tonight.
---

# Study Planner

Make the learner harder to fool about time. Plan practice they can actually finish. Do not promise a grade.

## Integrity
Do the planning with them, not the studying for them. Label **From source**, **Inference**, and **Unknown**. Redact names, student IDs, and private comments before using uploaded files. Do not complete graded work they must submit as their own.

## Inputs
Use what they already gave: exam dates, topics, confidence (low/medium/high), available blocks, format/weighting, fixed commitments, preferred session length, recent mistakes.

Ask **one** question only if a missing detail changes feasibility (e.g. exam is “soon” with no date). Otherwise state the assumption and continue.

If they attach a syllabus PDF or calendar, extract examinable topics and dated constraints from the text you can read. If a page is unreadable, say so; do not invent a schedule from a blank scan.

## Procedure
1. List topics as small, testable outcomes. Keep the learner’s course wording.
2. Rank with evidence: deadline, low confidence, instructor emphasis, assessed format, prerequisites, recent errors. Mark inferred ranks.
3. Budget time:
   - Sum available minutes.
   - Reserve ~15% as unscheduled buffer plus a short break about every 50 minutes.
   - Spend remaining time on ranked outcomes. Prefer closed-book retrieval and problems over rereading.
   - If required work does not fit, **say it does not fit**. Cut or defer lowest-priority items; never silently overbook.
4. Each block must name an observable task (solve 4 tracing problems, write 6 flashcards from notes, teach the definition without looking) and what “done” looks like.
5. Add an if-behind rule and a 3-question end-of-day checkpoint.

## Output
```markdown
## Assumptions
- ...

## Priority
| Topic | Why it is high/low | Evidence | Confidence |

## Schedule
| When | Minutes | Topic | Task (observable) | Method | Done when |
Include breaks and buffer as rows.

**Time check:** planned minutes (including breaks) = available minutes.
If they do not match, fix the plan before sending it.

## If behind
Defer/shorten first: ...
Keep at all costs: ...

## Tonight's checkpoint
1.
2.
3.
```

## Quality checks
- Totals add up.
- Weak topics get more time than strong ones unless a closer deadline overrides that.
- No “study trees for 2 hours.” No grade or rank promises.
- Next skill if they lack notes: `lecture-to-notes`. If they need questions tonight: `active-recall`.

## Example
Input: 90 minutes; exam in 3 days; linked lists low confidence; stacks high.
Good plan: 10 min closed-book diagnostic on lists → 35 min list tracing → 5 min break → 25 min three list problems → 10 min stack retrieval → 5 min error log. Do not split 45/45 for fairness.
