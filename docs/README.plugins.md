# Plugins

Plugins live in `plugins/<plugin-name>/` and include `plugin.json`.

`plugin.json` supports metadata plus component path fields such as `agents`, `skills`, `hooks`, `mcpServers`, and `lspServers`.

## Current Plugins

- `plugins/code-simplifier`

## Install via APM (recommended)

This repository is also an [APM](https://github.com/microsoft/apm) package. Anyone can install the code-simplifier agent with:

```bash
apm install ChrisMcKee1/agentic-coding-toolkit
apm compile
```

See [APM Support](README.apm.md) for details.

## Install Local Plugin (Copilot CLI)

```bash
copilot plugin install ./plugins/code-simplifier
```

If you change files in a local plugin, run the same install command again to refresh the installed cache.
