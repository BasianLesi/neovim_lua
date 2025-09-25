return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  config = function()
    require("claude-code").setup({
      -- Terminal window
      window = {
        split_ratio = 0.30,          -- 30% height (horizontal) or width (vertical)
        position = "float",       -- "botright" | "topleft" | "vertical" | "float"
        enter_insert = true,         -- jump to insert when terminal opens
        hide_numbers = true,         -- hide line numbers in terminal
        hide_signcolumn = true,      -- hide signcolumn in terminal
        float = {                    -- used only when position = "float"
          width = "80%",             -- number of cols or "%"; e.g. 100 or "90%"
          height = "80%",            -- number of rows or "%"
          row = "center",            -- number | "center" | "%"
          col = "center",            -- number | "center" | "%"
          relative = "editor",       -- "editor" | "cursor"
          border = "rounded",        -- "none" | "single" | "double" | "rounded" | "solid" | "shadow"
        },
      },

      -- Auto-reload files when Claude modifies them
      refresh = {
        enable = true,
        updatetime = 100,            -- sets 'updatetime' while active
        timer_interval = 1000,       -- ms between change checks
        show_notifications = true,   -- notify on reload
      },

      -- Use repo root as CWD if in a git project
      git = { use_git_root = true },

      -- Shell specifics (tweak if you use nushell/fish)
      shell = {
        separator = "&&",
        pushd_cmd = "pushd",
        popd_cmd  = "popd",
      },

      -- CLI command and variants
      command = "claude",            -- the Claude Code CLI to run
      command_variants = {
        continue = "--continue",     -- resume last conversation
        resume   = "--resume",       -- interactive picker of conversations
        verbose  = "--verbose",      -- verbose turn-by-turn logging
      },

      -- Keymaps provided by the plugin (set false to disable any)
      keymaps = {
        toggle = {
          normal = "<C-;>",
          terminal = "<C-;>",
        },
        window_navigation = false,
        scrolling = true,            -- <C-f>/<C-b> page scroll in terminal
      },
    })

    -- Optional: an extra “plain” keybinding if you prefer
    vim.keymap.set("n", "<leader>cc", "<cmd>ClaudeCode<CR>", { desc = "Claude Code: toggle" })
  end
}
