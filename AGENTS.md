# AGENTS.md

## Project Overview

This repository is a curated Copilot customization collection maintained by Chris McKee.

It contains:

- Runtime agents (`.github/agents/*.md`)
- Catalog/plugin agents (`agents/*.agent.md`)
- Runtime prompts (`.github/prompts/*.prompt.md`)
- Catalog prompts (`prompts/*.prompt.md`)
- Runtime instructions (`.github/copilot-instructions.md`, `.github/instructions/*.instructions.md`)
- Catalog instructions (`instructions/*.instructions.md`)
- Runtime skills (`.github/skills/*/SKILL.md`)
- Catalog skills (`skills/*/SKILL.md`)
- Hooks (`hooks/*/hooks.json` + scripts)
- Plugins (`plugins/*/plugin.json`)

## Repository Structure

```text
.
├── agents/
├── prompts/
├── instructions/
├── skills/
├── hooks/
├── plugins/
├── docs/
├── scripts/
└── .github/
```

## Authoring Rules

### Agent Files (`.github/agents/*.md` and `agents/*.agent.md`)

- Use markdown frontmatter for shared agents.
- Include `name` and `description`.
- Recommended: `model` and `tools`.
- Use lower-case hyphenated filenames.
- Prefer `.github/agents/*.md` for VS Code runtime discovery.
- Keep `agents/*.agent.md` for catalog/plugin compatibility in this repository.

### Prompt Files (`*.prompt.md`)

- Frontmatter is recommended for shared prompts.
- Include `description`.
- Keep prompts task-focused and reusable.
- Prefer `.github/prompts/*.prompt.md` for VS Code runtime discovery.

### Instruction Files (`*.instructions.md`)

- Use markdown frontmatter when sharing instructions.
- Include `description`; include `applyTo` when you want automatic file matching.
- For GitHub path-specific instruction files, `applyTo` is required.
- Prefer `.github/instructions/*.instructions.md` for runtime use.

### Skills (`skills/*/SKILL.md`)

- Each skill is a folder with a `SKILL.md`.
- Use lower-case hyphenated skill folder names.
- `SKILL.md` should include `name` and `description` in frontmatter.

### Hooks (`hooks/*`)

- Bundle with `README.md`, `hooks.json`, and script files.
- Keep hooks non-blocking unless explicitly required.
- Use `.github/hooks/*.json` for GitHub coding-agent runtime discovery.

### Plugins (`plugins/*`)

- Include `plugin.json` at plugin root.
- Use semantic versioning.
- Keep plugin names lower-case hyphenated.
- Reinstall local plugins after edits to refresh the installed cache.

## Setup Commands

```bash
copilot plugin install ./plugins/code-simplifier
copilot plugin list
```

## Contribution Workflow

1. Add or update resource files.
2. Keep naming conventions consistent.
3. Verify plugin install and runtime behavior.
4. Open a PR to the `ChrisMcKee1` repository.
