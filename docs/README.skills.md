# Skills

Skills live in `skills/<skill-name>/SKILL.md`.

## Current conventions

- Canonical workspace location for active skills is `.github/skills/<skill-name>/SKILL.md`.
- This repository keeps curated examples in `skills/`.
- `SKILL.md` frontmatter requires both `name` and `description`.
- `name` must be lower-case, hyphenated, and match the parent folder name.
- Optional fields include `argument-hint`, `user-invokable`, and `disable-model-invocation`.

## Create a New Skill

```bash
cp -R skills/template-skill skills/my-skill
```
