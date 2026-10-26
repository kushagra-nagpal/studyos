# StudyOS

Six agent skills for the learning cycle — plan, understand, recall, explain, debug, and rehearse. They coach, not complete.

```
1. Plan        →  Syllabus + your calendar → a schedule that fits
2. Understand  →  Messy notes/slides → structured revision material
3. Retrieve    →  Closed-book questions before you re-read
4. Explain     →  One question at a time until *you* can say it
5. Diagnose    →  Earliest error in your solution → fix + transfer
6. Prepare     →  Timed practice matching your exam format
```

---

## The six skills

| Skill | Use it when | What you get |
|---|---|---|
| **Study Planner** | Exams, topics, limited hours | Feasible calendar, buffers, catch-up rule |
| **Lecture-to-Notes** | Messy slides / transcript | Structured notes, verify list, self-test |
| **Active Recall** | “Do I actually know this?” | Questions first, flashcards, review queue |
| **Socratic Tutor** | A concept will not click | One-step hints, no dumped lecture |
| **Error Diagnosis** | Wrong answer / “why is my code wrong?” | Earliest error, counterexample, transfer |
| **Exam Strategy** | Exam is close | Coverage map + timed practice set with questions |

---

## Quick start

```bash
# Install into Claude
chmod +x scripts/install-local.sh
./scripts/install-local.sh claude

# Install into both Claude and Cursor
./scripts/install-local.sh both
```

This copies all skills into `.claude/skills/` (and `.cursor/skills/`). Then in a conversation, describe what you need — the router skill will pick the right workflow.

To load a skill manually: open `skills/<name>/SKILL.md`, paste it into a new conversation, then paste your materials.

To upload as a `.skill` file:
```bash
chmod +x scripts/pack-skills.sh
./scripts/pack-skills.sh   # packs into dist/
```

Not sure which skill? Use `skills/studyos/SKILL.md` — it routes you.

---

## Try the demo

[`examples/demo-pack.md`](examples/demo-pack.md) is a small data-structures exam scenario. It shows the shape of a good output. It is not proof every model will match it.

---

## Design

- Retrieval before re-reading
- Hints before solutions
- **From source** / **Inference** / **Unknown** — every claim labelled
- Plans that include breaks, buffer, and “this does not fit”
- No grade promises, no predicted papers
- Privacy by default: strip identifiers before pasting

---

## Layout

```
skills/           Six skills and a router
scripts/          Install and pack scripts
examples/         Sample prompts and demo pack
tests/            Manual acceptance cases + rubric
docs/             Design principles, evaluation, roadmap, install guides
assets/           Diagrams
dist/             Packaged .skill files for upload
```

---

## License

MIT. See `LICENSE`. Do not paste restricted or identifying course material into external tools without permission. Follow your institution’s academic integrity rules.
