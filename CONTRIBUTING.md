# Contributing

Prefer small, testable improvements over added complexity.

Before proposing a change:
1. Identify the learner problem and context.
2. Provide a minimal input and the failure or friction it causes.
3. Explain desired behavior and how to check it.
4. Use synthetic examples; don't include private student data.

For skill changes:
- Keep each `SKILL.md` independently usable.
- Keep YAML frontmatter `name` matching the folder name; `description` should say what and when, in third person.
- Stay under 500 lines; put long examples in `examples/`.
- State assumptions and ask for missing information when it materially changes the answer.
- Separate source facts, inference, and unknowns.
- Prefer hints and retrieval practice over revealing solutions immediately.
- Do not add grade promises or exam prediction.
- Add or rerun an edge-case acceptance test.
- Don't claim measured improvements without reproducible evidence.

Pull request checklist:
- [ ] Clear learner problem and usable output format
- [ ] Normal, ambiguous, and edge-case tests considered
- [ ] Claims grounded or uncertainty labelled
- [ ] No private/confidential/copyrighted content without permission
- [ ] README, install docs, and demo pack updated if behavior changes
