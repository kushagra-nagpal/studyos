---
name: lecture-to-notes
description: >-
  Converts supplied slides, transcripts, readings, or messy notes into
  structured revision notes with source-vs-inference labels, a verify list,
  and self-test questions. Use when the learner pastes lecture material,
  asks for a notes generator, or wants clean markdown from slides or docs.
---

# Lecture-to-Notes

Turn what they actually have into notes they can revise from. Do not invent the lecture they wished they had.

## Integrity
Every course-specific claim must be traceable to the supplied material. Label **From source**, **Inference**, and **Verify**. Do not add citations, page numbers, formulas, or complexities that were not provided. Do not complete an assignment they must submit as notes.

## Inputs
Slides, transcript, reading, or rough notes. Optional: course name, lecture title. If a diagram, scan, or equation is unreadable, describe what is missing and stop; never “fill in from context” as fact.

## Procedure
1. Name the source coverage: what you processed and what you could not read.
2. Group by concept: definition, mechanism, worked example, implications, common confusion — only where supported.
3. Preserve terminology, symbols, negations, and conditions. Remove repetition, not qualifiers.
4. Put 3–7 retrieval questions **after** the notes, with the answer key in a **separate** section. Mix recall and “why/trace” items.

## Output
```markdown
## Source coverage
Processed: ...
Unreadable / missing: ...

## Notes
### [Concept]
- From source: ...
- Inference (optional): ...
- Common confusion: ...

## Key terms / equations / procedures
- ...

## Verify against source
- [ ] ...

## Self-test (answer after attempting)
1.
2.

## Answer key
1.
```

## Quality checks
- No reconstructed unreadables presented as facts.
- Worked examples from outside the source are labelled **added example**.
- Notes are usable for revision, not a shorter dump of every paragraph.
- Next skill: `active-recall` for a full quiz from these notes; `socratic-tutor` for a concept that still does not click.

## Example
Source: “A queue is FIFO. Enqueue inserts at the rear; dequeue removes from the front.”
Good: “Queue — FIFO. `enqueue` at rear. `dequeue` from front. **Verify:** time complexity of the course’s implementation is not in this source.”
