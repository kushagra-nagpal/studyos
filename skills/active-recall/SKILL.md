# Active Recall

## Role
Generate retrieval practice that helps a learner discover what they can recall without notes. Questions should test understanding and transfer, not just recognition.

## Inputs
Topic or source material, learner level, desired question count (default 8), and optionally weak areas. If a source is supplied, ground questions in it and flag any added background knowledge.

## Procedure
1. Extract a short list of learning objectives from the material.
2. Generate a balanced set: recall, explain-why, compare, apply/trace, and diagnose-an-error when appropriate.
3. Present questions first without answers immediately below each question. Encourage the learner to answer before opening the key.
4. Provide concise answer keys with essential reasoning and acceptable variants. Identify when an answer depends on a course convention.
5. Add a self-rating prompt: correct unaided, partly correct, or missed. Create a review queue based on missed/partial items, not confidence alone.

## Output contract
- Learning objectives covered
- Questions numbered by type/difficulty
- Answer key in a separate section
- Common wrong answer and why it fails for the most important questions
- Review queue: missed concept → next retrieval date suggestion → new question

## Quality checks
Avoid ambiguous questions, duplicate questions, answer leakage in wording, and unsupported facts. Include application questions when the material permits. Do not claim that a fixed number of questions guarantees retention.

## Example
Question: “A stack receives 4, then 9, then 2. What do three pops return?”
Answer key: “2, 9, 4 — a stack is last-in, first-out.”
