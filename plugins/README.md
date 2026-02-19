# Plugins

Installable Copilot plugins in this repository:

- `code-simplifier`

## Layout

Repository convention is `plugins/<plugin-name>/plugin.json`.

`plugin.json` can reference component paths such as:

- `agents`
- `skills`
- `hooks`
- `mcpServers`
- `lspServers`

## Install

```bash
copilot plugin install ./plugins/code-simplifier
```

If you modify a locally installed plugin, reinstall it from the same path to refresh the cached installed copy.
