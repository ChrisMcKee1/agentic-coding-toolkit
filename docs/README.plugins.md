# Plugins

Plugins live in `plugins/<plugin-name>/` and include `plugin.json`.

`plugin.json` supports metadata plus component path fields such as `agents`, `skills`, `hooks`, `mcpServers`, and `lspServers`.

## Current Plugins

- `plugins/code-simplifier`

## Install Local Plugin

```bash
copilot plugin install ./plugins/code-simplifier
```

If you change files in a local plugin, run the same install command again to refresh the installed cache.
