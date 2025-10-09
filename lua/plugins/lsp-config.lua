return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "clangd"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- Use the new vim.lsp.config approach instead of require("lspconfig")
      vim.lsp.config("lua_ls", {
        capabilities = capabilities
      })

      vim.lsp.config("clangd", {
        capabilities = capabilities
      })

      vim.lsp.config("pyright", {
        cmd = {"pyright-langserver", "--stdio"},
        capabilities = capabilities,
        settings = {
          pyright = { autoImportCompletion = true },
          python = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = 'openFilesOnly',
              useLibraryCodeForTypes = true,
              typeCheckingMode = 'off',
            },
            linting = {
              enabled = true,
              flake8Enabled = true,  -- Enable flake8 linting
              flake8Args = { "--max-line-length=120" },  -- Optional: Customize flake8 settings
              pylintEnabled = false,  -- Explicitly disable pylint
            }
          }
        }
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })
    end
  }
}
