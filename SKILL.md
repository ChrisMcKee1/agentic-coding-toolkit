---
name: agentic-coding-toolkit
description: Code-simplifier agent that reviews the git delta and simplifies recently changed code for clarity, consistency, and maintainability.
---

# Agentic Coding Toolkit

This package provides the **code-simplifier** agent — an autonomous code review
specialist that analyzes recent git changes and refines them for clarity,
consistency, and maintainability while preserving all functionality.

## Capabilities

- **Git delta analysis** — automatically scopes review to the latest commit.
- **Repository bootstrapping** — initializes git and creates a language-appropriate `.gitignore` for new repos.
- **Project-standard detection** — reads `.editorconfig`, linter configs, `AGENTS.md`, and existing code patterns to match conventions.
- **Clarity refinement** — reduces nesting, eliminates dead code, improves naming, and adds type annotations.
- **Functionality preservation** — never changes behaviour; only simplifies how the code is written.

## Included Primitives

| Type | File | Purpose |
|------|------|---------|
| Agent | `.apm/agents/code-simplifier.agent.md` | Full agent definition with review workflow |
| Prompt | `.apm/prompts/code-simplifier.prompt.md` | Runnable slash command for on-demand review |

## Usage

After installing with APM:

```bash
# Run the code-simplifier prompt
apm run code-simplifier

# Or use the agent directly in VS Code / Copilot Chat
# @code-simplifier Review and simplify the code delta from the most recent changes.
```

## When to Use

- After committing code that could benefit from a clarity pass.
- As a post-commit hook to automatically refine recent changes.
- During code review to get an automated simplification suggestion.
