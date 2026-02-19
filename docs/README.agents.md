# Agents

Runtime agents for VS Code should live in `.github/agents/` and can use standard `.md` files.

This repository also keeps a curated catalog in `agents/`, where we use `*.agent.md` for plugin/catalog clarity.

## Current conventions

- Canonical workspace location for active Copilot custom agents is `.github/agents/`.
- This repository keeps curated examples in `agents/`.
- Use lower-case, hyphenated file names.
- Frontmatter is recommended for shared agents; include at least `name` and `description`.
- VS Code detects `.md` agent files in `.github/agents/`; `.agent.md` remains supported.
- Common optional fields include `tools`, `model`, and `argument-hint`.

## Current Agents

- `code-simplifier.agent.md`
- `.github/agents/code-simplifier.md`

## Create a New Agent

```bash
cp agents/_template.agent.md agents/my-agent.agent.md
```

For VS Code runtime use:

```bash
cp agents/_template.agent.md .github/agents/my-agent.md
```
