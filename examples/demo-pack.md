# StudyOS demo pack

All course content below is fictional and deliberately small. These are illustrative examples, not proof that every model behaves identically.

## Shared course context
- Course: Intro to Data Structures
- Exam: Friday, 10:00 AM; today is Monday
- Available study time: Monday 90 min; Tuesday 120 min; Wednesday 90 min; Thursday 120 min
- Topics: arrays/strings (medium confidence); stacks/queues (high); linked lists (low); trees/traversals (low); hash tables (medium); Big-O (medium)
- Instructor-provided format: 60 minutes, five questions — two tracing, two implementation/design, one complexity analysis
- Recent errors: confusing tree height with number of nodes; off-by-one linked-list traversal errors

## 1 — Study Planner
**Prompt:** Use the context above. Prioritize weak areas, fit available hours, include breaks and buffer.
**Good output:** more time for trees and linked lists; concrete practice tasks; daily checkpoints; fallback plan; no grade promises. The plan must calculate durations and buffers accurately rather than copy a schedule blindly.

## 2 — Lecture-to-Notes
**Source:** “A stack follows LIFO. push adds an item to the top; pop removes the top item. A queue follows FIFO. enqueue adds at the rear; dequeue removes from the front. Array-based queues can waste space if implemented without circular indexing.”
**Expected excerpt:**
- Stack — LIFO: last inserted item removed first; operations `push`, `pop`.
- Queue — FIFO: first inserted item removed first; operations `enqueue`, `dequeue`.
- Common confusion: stack top differs from queue front/rear.
- Verify: the excerpt does not specify operation complexities.
- Self-test: after pushing A then B, what does pop return, and why?

## 3 — Active Recall
**Question:** A stack receives 4, then 9, then 2. What sequence is returned by three pop operations?
**Answer:** `2, 9, 4` — a stack is last-in, first-out. In the actual workflow, show questions first and put answers in a separate section.

## 4 — Socratic Tutor
**Learner:** “I don't understand tree height. Is it the number of nodes?”
**Expected first turn:** “Let's use a tiny tree: root A has children B and C, and B has child D. How many edges are on the longest path from A to a leaf?” Wait for the answer, then clarify whether the course measures height in edges or nodes.

## 5 — Error Diagnosis
**Attempt:** `while (current.next != null) { current = current.next; count++; }`
**Expected diagnosis:** the loop stops when `current` is the final node, so whether the final node is counted depends on initialization. Ask how `count` is initialized before asserting a precise result. A common counting pattern visits while `current != null`, incrementing once per visited node.
**Transfer task:** count an empty list and a three-node list; state the initial count and why the loop terminates.

## 6 — Exam Strategy
Use only the supplied exam format, topics, confidence levels, and practice observations. Build a timed 60-minute rehearsal matching the stated five-question format, a topic coverage matrix, and a short weak-area revision plan. Explicitly label it a rehearsal, not a prediction.
