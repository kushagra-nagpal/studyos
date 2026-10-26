# Install StudyOS skills

Each workflow is a folder with a `SKILL.md` file (Agent Skills layout). A `.skill` file is only a zip of that folder for upload — keep editing the markdown.

## Cursor
From the repo root:

```bash
chmod +x scripts/install-local.sh
./scripts/install-local.sh cursor
```

That copies `skills/*` into `.cursor/skills/`. Restart the agent or open a new chat, then mention the skill by name (`study-planner`, `active-recall`, …) or describe the task.

To use them in every project, copy the same folders into `~/.cursor/skills/`.

## Claude Code
```bash
./scripts/install-local.sh claude
```

Copies into `.claude/skills/` in this repo. For all projects, copy into `~/.claude/skills/`.

## Claude.ai custom skills
```bash
chmod +x scripts/pack-skills.sh
./scripts/pack-skills.sh
```

Upload the files in `dist/` (for example `study-planner.skill`). Claude.ai expects a zipped skill directory; the `.skill` extension is that zip.

## Chat with no skill installer
Open the matching `skills/<name>/SKILL.md`, paste it at the top of the thread, then paste your syllabus, notes, or attempt.

## Which skill to load

| You have… | Skill |
|---|---|
| Too little time and a syllabus | `study-planner` |
| Messy slides or a transcript | `lecture-to-notes` |
| A need to test yourself | `active-recall` |
| A concept that will not click | `socratic-tutor` |
| A wrong solution or failing code | `error-diagnosis` |
| An exam and a wish for practice | `exam-strategy` |
| Unsure | `studyos` |

Do not upload restricted past papers, other students’ work, or identifying records without permission.
