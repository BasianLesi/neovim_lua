return {
  -- Tree-sitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true, -- Automatically install parsers when opening files
        ensure_installed = { "python" }, -- Ensure Python parser is installed
        highlight = {
          enable = true, -- Enable Tree-sitter syntax highlighting
          additional_vim_regex_highlighting = false, -- Disable Vim's regex highlighting
          disable = {}, -- Optionally disable for specific filetypes
        },
        indent = {
          enable = true, -- Enable Tree-sitter-based indentation
        },
      })
    end,
  },
  -- LSP (Pyright)
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").pyright.setup {
        cmd = { "pyright-langserver", "--stdio" }, -- Ensure correct command
      }
    end,
  },
}
