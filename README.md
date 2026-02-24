# nvim-config

Personal Neovim configuration based on [NvChad](https://github.com/NvChad/NvChad), tuned for data science workflows (Python, R, Julia).

## Requirements

- Neovim >= 0.10
- Git
- [Nerd Font](https://www.nerdfonts.com/)
- `fortune` (optional, for dashboard quotes): `brew install fortune`

## Install

Back up any existing config, then clone:

```bash
mv ~/.config/nvim ~/.config/nvim.bak
git clone https://github.com/Enrico68/nvim-config ~/.config/nvim
nvim
```

Lazy.nvim will bootstrap itself and install all plugins on first launch.

## LSP Servers

Install data science language servers via Mason (run inside Neovim):

```
:MasonInstall pyright r-languageserver julia-lsp
```

## Plugins

| Plugin | Purpose |
|--------|---------|
| [avante.nvim](https://github.com/yetone/avante.nvim) | AI assistant (Kimi / Mistral) |
| [iron.nvim](https://github.com/hkupty/iron.nvim) | REPL for Python, R, shell |
| [sniprun](https://github.com/michaelb/sniprun) | Run code snippets inline |
| [supermaven-nvim](https://github.com/supermaven-inc/supermaven-nvim) | AI code completion |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | Start screen |
| [claude-code.nvim](https://github.com/greggh/claude-code.nvim) | Claude Code integration |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatting (stylua) |

## Key Mappings

| Key | Action |
|-----|--------|
| `<Space>sc` | Send motion/selection to REPL |
| `<Space>sl` | Send line to REPL |
| `<Space>sf` | Send file to REPL |
| `<Space>sq` | Exit REPL |
| `<leader>sr` | SnipRun current line / selection |
| `<leader>sR` | SnipRun entire file |
| `<Tab>` | Accept Supermaven suggestion |
| `jk` | Exit insert mode |
