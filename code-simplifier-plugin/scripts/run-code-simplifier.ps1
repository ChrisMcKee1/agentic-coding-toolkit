# run-code-simplifier.ps1
# agentStop hook: invokes the code-simplifier agent when file edits were detected.
# The agent's system prompt handles delta identification and git bootstrapping.

$event = $input | ConvertFrom-Json -ErrorAction SilentlyContinue
$shouldRun = $true

if ($event) {
    $editToolCalls = $event.tool_calls | Where-Object { $_.tool -match 'edit|write|create|apply_patch' }
    $shouldRun = [bool]$editToolCalls
}

if (-not $shouldRun) {
    Write-Output "code-simplifier hook: no file edits detected, skipping."
    exit 0
}

Write-Output "code-simplifier hook: running code-simplifier agent on the delta..."

copilot `
  --agent code-simplifier `
  --prompt "Review and simplify the code delta from the most recent changes." `
  --allow-all-tools `
  --silent
