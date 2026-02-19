# Copilot Instructions — Agentic Coding Toolkit

## What This Repo Is

A **content-only** Copilot customization collection — no application code. Every file is a Markdown resource (agent, prompt, instruction, skill), a JSON manifest (hook, plugin), or a shell script. There is no build step, no test suite, and no compiled output.

## Dual-Path Convention

Resources exist in two locations with different roles:

| Purpose | Path | Extension |
|---------|------|-----------|
| **Runtime** (VS Code / GitHub discovers automatically) | `.github/agents/`, `.github/prompts/`, `.github/instructions/`, `.github/skills/` | `.md`, `.prompt.md`, `.instructions.md`, `SKILL.md` |
| **Catalog / plugin** (browsable templates, bundled in plugins) | `agents/`, `prompts/`, `instructions/`, `skills/` | `.agent.md`, `.prompt.md`, `.instructions.md`, `SKILL.md` |

When adding a new resource, place the canonical copy under `.github/` for runtime discovery. Optionally add a catalog copy in the top-level folder if the resource should be browsable or bundled in a plugin.

## File Authoring Rules

- **Filenames**: lower-case, hyphenated (e.g., `code-simplifier.md`).
- **Frontmatter**: include `name` and `description` for agents and skills; include `description` for prompts; include `applyTo` for path-scoped instructions.
- **Line endings**: LF everywhere (enforced by `.editorconfig`).
- **Final newline**: always insert one.
- **No secrets or tokens** in any committed file.

## Plugin Structure (`plugins/<name>/`)

Each plugin is a self-contained folder:

```
plugins/code-simplifier/
├── plugin.json          # name, version (semver), author, agents/hooks paths
├── agents/              # agent .md files referenced by plugin.json "agents" key
├── hooks.json           # hook events (version: 1, event → command array)
├── scripts/             # cross-platform scripts (.ps1 + .sh)
└── README.md
```

After editing any file inside a plugin, **reinstall** to refresh the cache:

```bash
copilot plugin uninstall code-simplifier
copilot plugin install ./plugins/code-simplifier
```

## Hook Conventions

- Hook manifests use `"version": 1` and map event names to command arrays.
  - **CLI events** (lowerCamelCase): `agentStop`, `preToolUse`, `postToolUse`, `sessionStart`, `sessionEnd`, `userPromptSubmitted`, `subagentStop`, `errorOccurred`
  - **VS Code events** (PascalCase): `Stop`, `PreToolUse`, `PostToolUse`, `SessionStart`, `UserPromptSubmit`, `SubagentStart`, `SubagentStop`, `PreCompact`
  - Include both `agentStop` and `Stop` in hook files for cross-platform compatibility.
- Always provide both `powershell` and `bash` script paths for cross-platform support.
- Scripts must guard for `copilot` CLI availability and exit 0 silently if missing.
- `cwd` is relative to the hooks.json location.
- `.github/hooks/*.json` is used for GitHub coding-agent runtime discovery.

## Key Workflows

| Task | Command |
|------|---------|
| Install plugin | `copilot plugin install ./plugins/code-simplifier` |
| List plugins | `copilot plugin list` |
| Run agent directly | `copilot --agent code-simplifier --prompt "..." --allow-all-tools --silent` |
| Create new agent from template | Copy `agents/_template.agent.md` → `agents/<name>.agent.md` and `.github/agents/<name>.md` |
| Create new skill from template | Copy `skills/template-skill/` → `skills/<name>/` and rename SKILL.md frontmatter |

## Editing Guidelines

- This repo contains **no application code** — changes are Markdown, JSON, and shell scripts only.
- Match the existing patterns in templates (`agents/_template.agent.md`, `prompts/_template.prompt.md`, etc.) when creating new resources.
- Keep `AGENTS.md`, `README.md`, `CONTRIBUTING.md`, and `docs/` in sync when adding or renaming resources.
- `docs/README.<type>.md` files document each resource category — update the relevant one when changing that category.
