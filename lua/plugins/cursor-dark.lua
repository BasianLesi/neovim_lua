return {
  {
    "ydkulks/cursor-dark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("cursor-dark").setup({
        style = "dark",
        transparent = false,
        dashboard = true,
      })

      -- APPLY the theme
      vim.cmd.colorscheme("cursor-dark")
    end,
  },
}
