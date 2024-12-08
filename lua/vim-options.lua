vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.g.python_recommended_style = 0
vim.g.mapleader = " "
vim.g.background = "light"

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
