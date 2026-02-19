# APM (Agent Package Manager) Support

This repository is a fully compatible [APM](https://github.com/microsoft/apm) package, allowing anyone to install the **code-simplifier** agent with a single command.

## What Is APM?

APM is an open-source dependency manager for AI agents from Microsoft. It works like `npm` or `pip` but for agentic primitives — agents, prompts, instructions, skills, and MCP servers. You declare dependencies in an `apm.yml` manifest and every developer who clones the repo gets the same agent setup.

## Package Structure

```text
apm.yml                              # Package manifest
SKILL.md                             # AI-discoverable meta-guide
.apm/
├── agents/
│   └── code-simplifier.agent.md     # Agent definition
└── prompts/
    └── code-simplifier.prompt.md    # Runnable prompt / slash command
```

## Install

```bash
# One-time: install APM
curl -sSL https://raw.githubusercontent.com/microsoft/apm/main/install.sh | sh
# or: pip install apm-cli

# Install the code-simplifier package into your project
apm install ChrisMcKee1/agentic-coding-toolkit

# Compile instructions into AGENTS.md / CLAUDE.md
apm compile
```

After `apm install`:

| Integration | What happens |
|-------------|-------------|
| **VS Code / Copilot** | Agent installed to `.github/agents/code-simplifier-apm.agent.md`; prompt to `.github/prompts/code-simplifier-apm.prompt.md` |
| **Claude Code** | Prompt converted to `.claude/commands/code-simplifier-apm.md` |
| **Cursor / Codex** | `apm compile` generates `AGENTS.md` with compiled instructions |

## Run

```bash
# Run the code-simplifier prompt via APM
apm run code-simplifier

# Or from apm.yml scripts
apm run code-simplifier
```

## Add As a Dependency

In another project's `apm.yml`:

```yaml
name: my-project
dependencies:
  apm:
    - ChrisMcKee1/agentic-coding-toolkit
```

Then `apm install && apm compile` integrates the code-simplifier automatically.

## Virtual Package (Single File)

You can also install just the agent or prompt individually:

```bash
apm install ChrisMcKee1/agentic-coding-toolkit/.apm/agents/code-simplifier.agent.md
apm install ChrisMcKee1/agentic-coding-toolkit/.apm/prompts/code-simplifier.prompt.md
```

## Relationship to Copilot CLI Plugin

The Copilot CLI plugin (`plugins/code-simplifier/`) and the APM package are **parallel install paths** for the same agent:

| Method | Best for |
|--------|----------|
| `apm install` | Cross-tool portability (Copilot, Claude, Cursor, Codex) |
| `copilot plugin install` | Copilot CLI plugin hooks (e.g. `agentStop` auto-run) |

Both can coexist — the APM-installed primitives use an `-apm` suffix to avoid filename collisions.

## References

- [APM repository](https://github.com/microsoft/apm)
- [APM getting started](https://github.com/microsoft/apm/blob/main/docs/getting-started.md)
- [APM primitives guide](https://github.com/microsoft/apm/blob/main/docs/primitives.md)
- [APM integrations](https://github.com/microsoft/apm/blob/main/docs/integrations.md)
