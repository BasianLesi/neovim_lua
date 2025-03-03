return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = {
            enable = false,
            additional_vim_regex_highlighting = false,
            disable = {}
        },
        indent = { enable = false },
      })
    end
  }
}
