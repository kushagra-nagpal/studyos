# StudyOS — practical AI workflows for learning

**Six reusable workflows for turning course material into a plan, understanding, practice, feedback, and exam readiness.**

StudyOS is a set of plain-English, tool-agnostic skill specifications. They can be copied into an AI assistant that supports custom instructions/skills, or used as structured prompts in a normal chat. This is not a standalone app and does not require a particular model.

> **Status:** v0.1.0 — carefully structured starter release. The test suite and demo pack are included; results have not been independently benchmarked across models. Treat outputs as drafts and verify important course facts against your materials.

## The learning loop

1. **Plan** — turn a syllabus and available time into a realistic schedule.
2. **Understand** — convert lectures into source-grounded notes.
3. **Retrieve** — practise recalling concepts before looking at answers.
4. **Explain** — learn through guided questions and hints.
5. **Diagnose** — find the earliest reasoning error and practise the underlying concept.
6. **Prepare** — use evidence from the syllabus and past papers to prioritize exam practice.

The workflows work independently, but their best use is as a loop: plan → learn → retrieve → explain → diagnose → prepare.

## Quick start

1. Pick a workflow in `skills/`.
2. Open its `SKILL.md` and copy the instructions into your AI assistant, or install it using your assistant's supported custom-skill format.
3. Provide the requested inputs. Start with the examples in `examples/`.
4. Ask the assistant to separate source facts from assumptions and to flag missing information.
5. Check the output against your syllabus, lecture materials, and instructor's expectations.

Each skill contains its own instructions, input checklist, procedure, output contract, quality checks, and a small worked example. No API key or code execution is required for the prompt-only workflow.

## The six workflows

| Workflow | Use it when | Output |
|---|---|---|
| [Study Planner](skills/study-planner/SKILL.md) | You have exams, topics, and limited hours | Prioritized calendar, buffers, and catch-up rules |
| [Lecture-to-Notes](skills/lecture-to-notes/SKILL.md) | Notes/slides/transcripts are messy | Structured notes with source gaps and self-test questions |
| [Active Recall](skills/active-recall/SKILL.md) | You want to test what you actually know | Questions, answer key, hints, and a review queue |
| [Socratic Tutor](skills/socratic-tutor/SKILL.md) | A concept isn't clicking | One-step-at-a-time guided learning |
| [Error Diagnosis](skills/error-diagnosis/SKILL.md) | You got a problem wrong | Earliest error, explanation, hint ladder, transfer problem |
| [Exam Strategy](skills/exam-strategy/SKILL.md) | The exam is approaching | Evidence-based topic map and timed practice plan |

## Try the demo pack

Start with [`examples/demo-pack.md`](examples/demo-pack.md), which contains one small fictional course dataset and worked examples for all six workflows. The examples are illustrative expected outputs, not proof that every model will produce identical results.

## Design principles

- **Retrieval before rereading:** try to answer before revealing the answer.
- **Teach, don't replace:** hints should preserve learner effort instead of jumping straight to a solution.
- **Evidence labels:** distinguish source-backed information, inference, and unknowns.
- **Realistic planning:** include breaks, buffers, and a fallback plan; don't schedule every minute.
- **Feedback that transfers:** after correcting an error, try a new problem testing the same idea.
- **No fake certainty:** never claim to predict exam questions or guarantee grades.
- **Privacy by default:** remove personal identifiers from course materials before sharing them with an external tool.

## Quality and evaluation

Read [`docs/evaluation.md`](docs/evaluation.md) and run through [`tests/test-cases.md`](tests/test-cases.md) manually with your chosen assistant. Record pass/fail and examples in [`tests/RESULTS_TEMPLATE.md`](tests/RESULTS_TEMPLATE.md). No automated test runner is required because these skills are natural-language specifications. Do not describe them as validated until you have recorded real test results.

## Limitations and responsible use

- AI can invent facts, misread scans, or misunderstand course-specific notation. Verify against original material.
- The planner cannot know your actual pace unless you provide honest estimates and update it.
- Past papers indicate prior coverage, not guaranteed future questions.
- Do not upload restricted, confidential, or personally identifying material without permission.
- Follow your institution's academic integrity rules. Use the workflows for learning, not to misrepresent AI work as your own where prohibited.

## Repository layout

```text
skills/       Six standalone SKILL.md workflow specs
examples/     Shared fictional course data and demo outputs
 tests/       Manual acceptance cases and results template
docs/         Design principles, evaluation, roadmap
SOURCES.md    Inspiration and attribution notes
LICENSE       MIT license for original project content
```

## Contributing

See [`CONTRIBUTING.md`](CONTRIBUTING.md). Suggestions should include a concrete student problem, a reproducible example, and a way to tell whether the workflow helped.

## License

Original StudyOS project content is released under the MIT License; see `LICENSE`. Referenced repositories and resources retain their own licenses and attribution. StudyOS does not copy third-party skill text wholesale. Check each upstream license before adapting any third-party material.
