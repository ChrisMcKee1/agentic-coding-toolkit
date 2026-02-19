# Prompts

Prompts live in `prompts/` and use the `*.prompt.md` convention.

## Current conventions

- Canonical workspace location for active prompt files is `.github/prompts/`.
- This repository keeps curated examples in `prompts/`.
- Use lower-case, hyphenated file names.
- `.prompt.md` frontmatter is optional, but `description` is strongly recommended.
- Common optional fields include `name`, `agent`, `model`, `tools`, and `argument-hint`.

## Create a New Prompt

```bash
cp prompts/_template.prompt.md prompts/my-prompt.prompt.md
```
