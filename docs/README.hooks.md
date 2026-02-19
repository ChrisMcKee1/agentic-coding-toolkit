# Hooks

Hooks live in `hooks/<hook-name>/` and typically include:

- `README.md`
- `hooks.json`
- Script files in `scripts/`

## Spec Notes

- Hook configs use `version: 1` with a `hooks` object.
- Command entries use `type: "command"` and can include `bash`, `powershell`, `cwd`, `env`, and `timeoutSec`.
- Official event names include `sessionStart`, `sessionEnd`, `userPromptSubmitted`, `preToolUse`, `postToolUse`, `agentStop`, `subagentStop`, and `errorOccurred`.
- Only `preToolUse` responses are evaluated for permission decisions; output from other hook types is ignored.

## Runtime Location

- For Copilot coding agent on GitHub, hook files are discovered from `.github/hooks/*.json` on the default branch.
- For Copilot CLI sessions, hooks are discovered from the current working directory.
- This repository's `hooks/` directory is a reusable catalog layout used by plugin packaging.

## Existing Hook Bundle

- `hooks/code-simplifier-stop`
