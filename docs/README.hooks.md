# Hooks

Hooks live in `hooks/<hook-name>/` and typically include:

- `README.md`
- `hooks.json`
- Script files in `scripts/`

## Spec Notes

- Hook configs use `version: 1` with a `hooks` object.
- Command entries use `type: "command"` and can include `bash`, `powershell`, `cwd`, `env`, and `timeoutSec` (CLI format) or `command`, `windows`, `linux`, `osx`, `cwd`, `env`, and `timeout` (VS Code format).

### GitHub Copilot CLI Events (lowerCamelCase)

- `sessionStart`, `sessionEnd`, `userPromptSubmitted`, `preToolUse`, `postToolUse`, `agentStop`, `subagentStop`, `errorOccurred`

### VS Code Events (PascalCase)

- `SessionStart`, `UserPromptSubmit`, `PreToolUse`, `PostToolUse`, `PreCompact`, `SubagentStart`, `SubagentStop`, `Stop`

> **Note:** VS Code auto-converts CLI lowerCamelCase to PascalCase, but `agentStop` → `AgentStop` does NOT map to VS Code's `Stop`. Include both events in hook files for cross-platform compatibility.

- Only `preToolUse` / `PreToolUse` responses are evaluated for permission decisions; output from other hook types is ignored.

## Runtime Location

- For Copilot coding agent on GitHub, hook files are discovered from `.github/hooks/*.json` on the default branch.
- For Copilot CLI sessions, hooks are discovered from the current working directory.
- This repository's `hooks/` directory is a reusable catalog layout used by plugin packaging.

## Existing Hook Bundle

- `hooks/code-simplifier-stop`
