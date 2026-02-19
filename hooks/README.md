# Hooks

This repository stores reusable hook bundles in `hooks/<hook-name>/`.

Each bundle generally includes:

- `README.md`
- `hooks.json`
- one or more scripts under `scripts/`

## Compatibility Notes

- Hook configuration uses `version: 1` and a `hooks` object.
- Command hooks use `type: "command"` with `bash` and/or `powershell`.
- Optional command fields include `cwd`, `env`, and `timeoutSec` (default timeout is 30 seconds).

Supported hook event keys include:

- `sessionStart`
- `sessionEnd`
- `userPromptSubmitted`
- `preToolUse`
- `postToolUse`
- `agentStop`
- `subagentStop`
- `errorOccurred`

Only `preToolUse` can return a decision payload (`permissionDecision`); output from other hook types is ignored.

## Runtime Discovery

- Copilot coding agent on GitHub discovers hook files from `.github/hooks/*.json` on the default branch.
- Copilot CLI discovers hook configuration from the current working directory.
- Bundles in this `hooks/` folder are intended as reusable assets (for example, packaged by plugins).

Current bundles:

- `code-simplifier-stop`
