# Instructions

Instructions live in `instructions/` and use the `*.instructions.md` convention.

## Current conventions

- Canonical workspace location for active instruction files is `.github/instructions/`.
- This repository keeps curated examples in `instructions/`.
- Use lower-case, hyphenated file names ending with `.instructions.md`.
- For GitHub path-specific instructions, frontmatter must include `applyTo`.
- In VS Code, frontmatter is optional, and `applyTo` enables automatic file matching.
- Common optional fields include `name` and `description`.

## Create a New Instruction

```bash
cp instructions/_template.instructions.md instructions/my-instruction.instructions.md
```
