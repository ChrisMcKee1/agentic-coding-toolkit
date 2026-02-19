#!/usr/bin/env bash
# run-code-simplifier.sh
# agentStop hook: invokes the code-simplifier agent when file edits were detected.
# The agent's system prompt handles delta identification and git bootstrapping.

set -euo pipefail

EVENT=$(cat)

if [ -n "$EVENT" ]; then
    if ! echo "$EVENT" | grep -qE '"tool"\s*:\s*"(edit|write|create|apply_patch)"'; then
        echo "code-simplifier hook: no file edits detected, skipping."
        exit 0
    fi
fi

echo "code-simplifier hook: running code-simplifier agent on the delta..."

copilot \
  --agent code-simplifier \
  --prompt "Review and simplify the code delta from the most recent changes." \
  --allow-all-tools \
  --silent
