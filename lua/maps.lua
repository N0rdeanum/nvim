local keymap = vim.keymap


keymap.set('n', 'x', '"_x')

--Remap space as leader key
keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
---- Close all windows and exit from Neovim with <leader> and q
keymap.set('n', '<leader>z', ':qa!<CR>')

-- Clear search highlighting with <leader> and c
keymap.set('n', '<leader>c', ':nohl<CR>')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', '<leader>dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

--save
keymap.set('n', '<leader>w', ':w<cr>')

-- New tab
keymap.set('n', 'te', ':tabedit<cr>')
-- Close tab
keymap.set('n', '<A-q>', ':tabclose<cr>')
-- Split window
keymap.set('n', '<A-e>', ':close<cr>')
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')


-- Insert --
-- Press jk fast to enter
keymap.set("i", "jk", "<ESC>")

-- Comment
--keymap.set("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>")
--keymap.set("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
