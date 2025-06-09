vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.g.python_recommended_style = 0
vim.g.mapleader = " "
vim.g.background = "light"
vim.opt.clipboard = "unnamedplus"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- save buffer with zz
-- vim.keymap.set('n', 'zz', ':w<CR>')

-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
-- vim.wo.number = true

-- mapping that toggles search highlighting by pressing , key 
vim.keymap.set('n', ',', ':set hlsearch! hlsearch?<CR>')


local function toggle_diagnostic_virtual_text()
    local current_config = vim.diagnostic.config()
    local new_value = not current_config.virtual_text
    vim.diagnostic.config({virtual_text = new_value})
    print("Diagnostic virtual text: " .. (new_value and "ON" or "OFF"))
end

vim.keymap.set('n', '<leader>dv', toggle_diagnostic_virtual_text, { noremap = true, silent = true })

-- Cpp debugger mappings__
-- vim.api.nvim_set_keymap('n', '<F5>', ':lua require"dap".continue()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<F10>', ':lua require"dap".step_over()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<F11>', ':lua require"dap".step_into()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<F12>', ':lua require"dap".step_out()<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<Leader>b', ':lua require"dap".toggle_breakpoint()<CR>', { noremap = true, silent = true })

-- ipynb keymapping
--
-- Press <leader>r to run the current cell.
-- Press <leader>n to run the next cell.
-- Press <leader>o to open the output pane.
--
-- vim.cmd [[ autocmd FileType python call jukit#splits#output() ]]
-- vim.keymap.set("n", "<leader>r", ":call jukit#send_cell()<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>n", ":call jukit#send_next_cell()<CR>", { silent = true })
-- vim.keymap.set("n", "<leader>o", ":call jukit#splits#output()<CR>", { silent = true })
