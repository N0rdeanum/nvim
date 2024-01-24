-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local discipline = require("N0rdeanum.discipline")
discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- инкремент/дикремент
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Удалить слово задом наперед
keymap.set("n", "dw", "vb_d")

-- Выбрать все
keymap.set("n", "<C-a>", "gg<S-v>G")
--список переходов
keymap.set("n", "<C-m>", "<C-i>", opts)

-- сохранить
keymap.set("n", "C-w", ":w<Return>", opts)

--новая вкладка
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "C-w>+")
keymap.set("n", "<C-w><down>", "C-w>-")

--diagnostick
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
