# 🤖 Chris McKee Copilot Collection

Curated GitHub Copilot customizations by **Chris McKee (Principal AI Architect)**.

This repository is structured to scale like a marketplace-style Copilot content repo, with first-class folders for:

- Agents
- Prompts
- Instructions
- Skills
- Hooks
- Plugins

## Quick Start

### Prerequisites

- GitHub Copilot CLI installed and authenticated
- Git installed

### Install the local plugin

From repo root:

```bash
copilot plugin install ./plugins/code-simplifier
```

### Verify installation

```bash
copilot plugin list
```

### Uninstall the plugin

```bash
copilot plugin uninstall code-simplifier
```

## Copilot CLI Usage

### Run the code simplifier agent directly

```bash
copilot --agent code-simplifier --prompt "Review and simplify the code delta from the most recent changes." --allow-all-tools --silent
```

### Test the local hook script (PowerShell)

```powershell
echo '{"tool_calls":[{"tool":"edit"}]}' | powershell -NoProfile -File .github\hooks\scripts\run-code-simplifier.ps1
```

## Runtime Discovery (Current)

- Agents: VS Code discovers workspace agents from `.github/agents/` (plain `.md` supported).
- Prompts: VS Code discovers prompt files from `.github/prompts/*.prompt.md`.
- Instructions: VS Code discovers `.github/copilot-instructions.md` and `.github/instructions/*.instructions.md`.
- Hooks (GitHub coding agent): discovered from `.github/hooks/*.json` on the default branch.
- Plugins (Copilot CLI): local plugins are installed from paths like `./plugins/<plugin-name>`.

## Add New Copilot Resources

### PowerShell (Windows)

```powershell
Copy-Item .\agents\_template.agent.md .\agents\my-new-agent.agent.md
Copy-Item .\agents\_template.agent.md .\.github\agents\my-new-agent.md
Copy-Item .\prompts\_template.prompt.md .\prompts\my-new-prompt.prompt.md
Copy-Item .\instructions\_template.instructions.md .\instructions\my-new-instruction.instructions.md
Copy-Item -Recurse .\skills\template-skill .\skills\my-new-skill
New-Item -ItemType Directory -Path .\plugins\my-plugin -Force
```

### Bash (Linux/macOS)

Add a new agent:

```bash
cp agents/_template.agent.md agents/my-new-agent.agent.md
cp agents/_template.agent.md .github/agents/my-new-agent.md
```

Add a new prompt:

```bash
cp prompts/_template.prompt.md prompts/my-new-prompt.prompt.md
```

Add a new instruction:

```bash
cp instructions/_template.instructions.md instructions/my-new-instruction.instructions.md
```

Add a new skill:

```bash
cp -R skills/template-skill skills/my-new-skill
```

Add a new plugin:

```bash
mkdir -p plugins/my-plugin
```

Then create `plugins/my-plugin/plugin.json`, plus associated `agents/`, `prompts/`, `skills/`, or `hooks/` resources.

For VS Code workspace discovery, use `.github/agents/*.md` and `.github/prompts/*.prompt.md`.

> Canonical plugin path in this repo is `plugins/code-simplifier`.

## Repository Structure

```text
.
├── agents/         # Curated agent catalog and plugin-friendly agent files
├── prompts/        # Reusable prompts (*.prompt.md)
├── instructions/   # Coding instructions (*.instructions.md)
├── skills/         # Skill folders with SKILL.md
├── hooks/          # Hook bundles (README.md + hooks.json + scripts)
├── plugins/        # Installable plugin packages (plugin.json)
├── docs/           # Category and usage docs
├── scripts/        # Utility scripts
└── .github/        # VS Code and repo-integrated Copilot runtime config
```

## Docs Index

- [Agents](docs/README.agents.md)
- [Prompts](docs/README.prompts.md)
- [Instructions](docs/README.instructions.md)
- [Skills](docs/README.skills.md)
- [Hooks](docs/README.hooks.md)
- [Plugins](docs/README.plugins.md)

## Official References

- VS Code custom agents: https://code.visualstudio.com/docs/copilot/customization/custom-agents
- VS Code prompt files: https://code.visualstudio.com/docs/copilot/customization/prompt-files
- VS Code custom instructions: https://code.visualstudio.com/docs/copilot/customization/custom-instructions
- GitHub repository custom instructions: https://docs.github.com/en/copilot/how-tos/configure-custom-instructions/add-repository-instructions
- GitHub hooks configuration: https://docs.github.com/en/copilot/reference/hooks-configuration
- Copilot CLI plugin reference: https://docs.github.com/en/copilot/reference/cli-plugin-reference

## Remote Repository

GitHub owner: **ChrisMcKee1**

## Security and Support

- Security policy: [SECURITY.md](SECURITY.md)
- Support: [SUPPORT.md](SUPPORT.md)
- Contributing: [CONTRIBUTING.md](CONTRIBUTING.md)
