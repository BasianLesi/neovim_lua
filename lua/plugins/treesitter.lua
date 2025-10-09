return {
  -- Tree-sitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      {
        "OXY2DEV/markview.nvim",
        lazy = false,
        priority = 49,
      },
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        auto_install = true, -- Automatically install parsers when opening files
        ensure_installed = { "python", "markdown", "markdown_inline", "html", "latex", "typst", "yaml" }, -- Ensure required parsers are installed
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
}
