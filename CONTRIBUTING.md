# Contributing

Thanks for contributing to this Copilot customization collection.

## What You Can Add

- New runtime agents in `.github/agents/` (and optional catalog copy in `agents/`)
- New runtime prompts in `.github/prompts/` (and optional catalog copy in `prompts/`)
- New runtime instructions in `.github/instructions/` or `.github/copilot-instructions.md`
- New runtime skills in `.github/skills/` (and optional catalog copy in `skills/`)
- New hooks in `hooks/`
- New plugins in `plugins/`

## Conventions

- Use lower-case hyphenated names.
- Include markdown frontmatter where applicable.
- Keep descriptions clear and concise.
- Avoid hardcoding secrets or tokens.

## Validation Checklist

- Resource file is in the correct folder.
- Frontmatter and required fields are present where applicable (`applyTo` for GitHub path-specific instructions, `name`/`description` for shared agents/skills).
- Plugin install still works (`copilot plugin install ...`).
- README/docs references are updated if needed.

## Pull Requests

- Use descriptive titles.
- Explain what was added and why.
- Include sample usage when relevant.
