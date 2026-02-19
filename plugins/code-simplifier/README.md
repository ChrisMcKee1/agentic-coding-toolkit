# code-simplifier

Reviews the latest git delta and simplifies changed code for readability, maintainability, and consistency while preserving behavior.

This plugin packages:

- an agent (`agents/`)
- a hook configuration (`hooks.json`) with cross-platform script entries

## Install

```bash
copilot plugin install ./plugins/code-simplifier
```

## Uninstall

```bash
copilot plugin uninstall code-simplifier
```

## Development Note

After editing this local plugin, reinstall it with the same install command so Copilot CLI picks up the latest cached plugin content.
