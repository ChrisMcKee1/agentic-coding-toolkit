# Hooks

This repository stores reusable hook bundles in `hooks/<hook-name>/`.

Each bundle generally includes:

- `README.md`
- `hooks.json`
- one or more scripts under `scripts/`

## Compatibility Notes

- Hook configuration uses `version: 1` and a `hooks` object.
- Command hooks use `type: "command"` with `bash` and/or `powershell` (CLI format) or `command` / `windows` / `linux` / `osx` (VS Code format).
- Optional command fields include `cwd`, `env`, `timeoutSec` (CLI, default 30s), and `timeout` (VS Code, default 30s).

### GitHub Copilot CLI Hook Events (lowerCamelCase)

- `sessionStart`
- `sessionEnd`
- `userPromptSubmitted`
- `preToolUse`
- `postToolUse`
- `agentStop`
- `subagentStop`
- `errorOccurred`

### VS Code Hook Events (PascalCase)

- `SessionStart`
- `UserPromptSubmit`
- `PreToolUse`
- `PostToolUse`
- `PreCompact`
- `SubagentStart`
- `SubagentStop`
- `Stop`

> **Note:** VS Code auto-converts CLI lowerCamelCase names to PascalCase (e.g., `preToolUse` → `PreToolUse`), but `agentStop` converts to `AgentStop` which is NOT a valid VS Code event. Use `Stop` explicitly for VS Code compatibility.

Only `preToolUse` / `PreToolUse` can return a decision payload (`permissionDecision`); output from other hook types is ignored.

## Runtime Discovery

- Copilot coding agent on GitHub discovers hook files from `.github/hooks/*.json` on the default branch.
- Copilot CLI discovers hook configuration from the current working directory.
- Bundles in this `hooks/` folder are intended as reusable assets (for example, packaged by plugins).

Current bundles:

- `code-simplifier-stop`
