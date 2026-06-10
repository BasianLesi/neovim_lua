return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local gitsigns = require("gitsigns")

		-- Soft green / red colors for the gutter signs
		local soft_green = "#a6e3a1"
		local soft_yellow = "#e5c890"
		local soft_red = "#eba0ac"
		local function set_gitsigns_colors()
			-- Gutter sign colors
			vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = soft_green })
			vim.api.nvim_set_hl(0, "GitSignsChange", { fg = soft_yellow })
			vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = soft_red })
			vim.api.nvim_set_hl(0, "GitSignsChangedelete", { fg = soft_red })
			vim.api.nvim_set_hl(0, "GitSignsTopdelete", { fg = soft_red })

			-- Diff view line backgrounds (used by :Gitsigns diffthis, vimdiff, etc.)
			-- Softer fills for whole lines, brighter for the exact changed text.
			vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#2e4636" })
			vim.api.nvim_set_hl(0, "DiffChange", { bg = "#45412e" })
			vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#4a2f33", fg = "#6e4b50" })
			vim.api.nvim_set_hl(0, "DiffText", { bg = "#3f6b4d" })
		end
		set_gitsigns_colors()
		-- Re-apply after any colorscheme change so they aren't overridden
		vim.api.nvim_create_autocmd("ColorScheme", { callback = set_gitsigns_colors })

		gitsigns.setup({
			on_attach = function(bufnr)
				local function map(mode, l, r, desc)
					vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
				end

				-- Navigate hunks
				map("n", "]h", gitsigns.next_hunk, "Next git hunk")
				map("n", "[h", gitsigns.prev_hunk, "Prev git hunk")

				-- Actions
				map("n", "<leader>hp", gitsigns.preview_hunk, "Preview hunk")
				map("n", "<leader>hs", gitsigns.stage_hunk, "Stage hunk")
				map("n", "<leader>hr", gitsigns.reset_hunk, "Reset hunk")
				map("n", "<leader>hb", function()
					gitsigns.blame_line({ full = true })
				end, "Blame line")
				map("n", "<leader>hd", function()
					-- Toggle: close the gitsigns diff if it's open, else open it
					local closed = false
					for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
						local b = vim.api.nvim_win_get_buf(win)
						if vim.api.nvim_buf_get_name(b):match("^gitsigns:") then
							vim.api.nvim_win_close(win, true)
							closed = true
						end
					end
					if closed then
						vim.cmd("diffoff")
					else
						gitsigns.diffthis()
					end
				end, "Toggle diff this file")
			end,
		})
	end,
}
