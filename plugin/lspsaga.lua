local status, saga = pcall(require, "lspsaga")
if (not status) then
  return
end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)


-- float terminal also you can pass the cli command in open_float_terminal function
local term = require("lspsaga.floaterm")

-- float terminal also you can pass the cli command in open_float_terminal function
vim.keymap.set("n", "<A-d>", function()
    term.open_float_terminal("custom_cli_command")
end, { silent = true })
vim.keymap.set("t", "<A-d>", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-\\><C-n>", true, false, true))
    term.close_float_terminal()
end, { silent = true })

-- or use command
vim.keymap.set("n", "<A-d>", "<cmd>Lspsaga open_floaterm fish<CR>", opts )
vim.keymap.set("t", "<A-d>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", opts)
vim.keymap.set("n", "<A-g>", "<cmd>Lspsaga open_floaterm lg<CR>", opts )
vim.keymap.set("t", "<A-g>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", opts)

