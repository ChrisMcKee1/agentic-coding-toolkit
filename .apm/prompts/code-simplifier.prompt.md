---
description: Review and simplify the most recent git delta for clarity, consistency, and maintainability.
mode: code-simplifier
tools: ["terminal", "file-manager"]
---

# Code Simplifier

Review and simplify the code delta from the most recent changes.

## Instructions

1. Identify files changed in the latest commit using `git diff HEAD~1 --name-only --diff-filter=ACMR`.
2. For each changed file, analyze opportunities to improve clarity, consistency, and correctness.
3. Apply project-specific best practices and coding standards detected from config files.
4. Ensure all functionality remains unchanged — only simplify how the code is written.
5. Add or improve type annotations where the language supports them.
6. Provide a brief summary of the significant changes and the reasoning behind them.

## Constraints

- Never change what the code does — only how it does it.
- Skip binary files, lock files, and auto-generated code.
- Avoid nested ternary operators; prefer explicit control flow.
- Choose clarity over brevity.
