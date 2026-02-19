---
name: Code Simplifier Stop Hook
description: Runs the code-simplifier agent when edit operations are detected at agent stop.
tags:
  - code-quality
  - refactor
  - hooks
---

This hook bundle contains scripts and configuration for invoking the `code-simplifier` agent after edit-related tool calls.

The bundle is configured with both the `agentStop` event (GitHub Copilot CLI) and the `Stop` event (VS Code) so it runs after the main agent response completes on either platform.
The scripts inspect tool activity and no-op when no edit-like tools are detected.

`agentStop` / `Stop` output is ignored by Copilot, so this hook is implemented as a side-effect action (launching the `code-simplifier` agent) and exits silently when not applicable.

Cross-platform command keys are provided via `powershell` and `bash` entries (CLI format) and `command` / `windows` entries (VS Code format) in `hooks.json`.

## Files

- `hooks.json`
- `scripts/run-code-simplifier.ps1`
- `scripts/run-code-simplifier.sh`
