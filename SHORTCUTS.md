# Neovim Shortcuts Cheat Sheet

## General Settings
- **Leader Key**: `Space`
- **Clipboard**: `unnamedplus` (system clipboard integration enabled)

---

## Window Navigation

### Pane Navigation
| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-k>` | Normal | Navigate to upper pane |
| `<C-j>` | Normal | Navigate to lower pane |
| `<C-h>` | Normal | Navigate to left pane |
| `<C-l>` | Normal | Navigate to right pane |

### Tmux Navigation
| Shortcut | Mode | Description |
|----------|------|-------------|
| `C-h` | Normal | Navigate to left tmux pane |
| `C-j` | Normal | Navigate to down tmux pane |
| `C-k` | Normal | Navigate to up tmux pane |
| `C-l` | Normal | Navigate to right tmux pane |

---

## Search & Highlighting

| Shortcut | Mode | Description |
|----------|------|-------------|
| `,` | Normal | Toggle search highlighting on/off |

---

## File Explorer (Neo-tree)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-n>` | Normal | Toggle Neo-tree file explorer |
| `<leader>bf` | Normal | Show buffers in Neo-tree (floating window) |

---

## Telescope (Fuzzy Finder)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-p>` | Normal | Find files in current workspace |
| `<leader>fg` | Normal | Live grep (search text in files) |
| `<leader><leader>` | Normal | Show recently opened files |

---

## LSP (Language Server Protocol)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `K` | Normal | Show hover documentation |
| `gd` | Normal | Go to definition |
| `<space>ca` | Normal & Visual | Show code actions |
| `<leader>e` | Normal | Show line diagnostics (floating window) |
| `<leader>dv` | Normal | Toggle diagnostic virtual text on/off |

---

## Formatting

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<leader>gf` | Normal | Format current buffer using LSP |

---

## Completion (nvim-cmp)

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-b>` | Insert | Scroll documentation up (4 lines) |
| `<C-f>` | Insert | Scroll documentation down (4 lines) |
| `<C-Space>` | Insert | Trigger completion menu |
| `<C-e>` | Insert | Abort/close completion menu |
| `<CR>` | Insert | Confirm completion selection |

---

## AI Assistants

### Codeium (AI Code Completion)
| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-g>` | Insert | Accept Codeium suggestion |
| `<C-;>` | Insert | Cycle to next Codeium completion |
| `<C-,>` | Insert | Cycle to previous Codeium completion |
| `<C-x>` | Insert | Clear Codeium suggestions |

### Claude Code
| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-;>` | Normal & Terminal | Toggle Claude Code terminal |
| `<leader>cc` | Normal | Open Claude Code |

---

## Markdown Preview

| Shortcut | Mode | Description |
|----------|------|-------------|
| `<C-_>` (Ctrl+/) | Normal | Toggle Markview preview |

---

## Commented Out / Disabled Shortcuts

The following shortcuts are present in your config but currently disabled:

### Save Buffer
- `zz` - Save buffer (`:w`) - **Commented out**

### Search Highlight Alternative
- `<leader>h` - Clear search highlighting - **Commented out** (replaced with `,`)

### Debugger Mappings (nvim-dap)
The following C++ debugger shortcuts are commented out:
- `<F5>` - Continue debugging
- `<F10>` - Step over
- `<F11>` - Step into
- `<F12>` - Step out
- `<Leader>b` - Toggle breakpoint

### Jupyter Notebook (jukit)
The following Jupyter notebook shortcuts are commented out:
- `<leader>r` - Run current cell
- `<leader>n` - Run next cell
- `<leader>o` - Open output pane

---

## Additional Configuration Notes

### Python Settings
- Tab settings: 4 spaces
- Relative line numbers enabled
- Python recommended style disabled

### Swap Files
- Swap files are disabled

### Language Servers Installed
- **lua_ls** - Lua Language Server
- **pyright** - Python Language Server (type checking mode: off)
- **clangd** - C/C++ Language Server

### Formatters Configured
- **stylua** - Lua formatter
- **black** - Python formatter
- **isort** - Python import sorter

---

*Generated from your Neovim configuration at `/Users/basianlesi/.config/nvim/`*

