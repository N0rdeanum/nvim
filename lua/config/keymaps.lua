-- Инициализация плагинов и зависимостей
local discipline = require("N0rdeanum.discipline")
discipline.cowboy()

-- Настройка клавиш
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Не изменяет регистры при выполнении команд
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Увеличение/уменьшение значения
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Удаление слова назад
keymap.set("n", "dw", 'vb"_d')

-- Выделить все
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Сохранение с правами root (пока не работает)
-- vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Отключить продолжения
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Журнал переходов
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Новая вкладка
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Разделение окна
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Перемещение по окнам
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Изменение размера окна
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Диагностика
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
  require("N0rdeanum.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
  require("N0rdeanum.lsp").toggleInlayHints()
end)

-- rest-nvim keybindings
-- keymap.set("n", "<leader>rr", function()
--   require("rest-nvim").run()
-- end, { noremap = true, silent = true, desc = "Rest run cursor" })
--
--
-- keymap.set("n", "<leader>rl", function()
--   require("rest-nvim").last()
-- end, { noremap = true, silent = true, desc = "Run last HTTP request" })
--
-- keymap.set("n", "<leader>rp", function()
--   require("rest-nvim").preview()
-- end, { noremap = true, silent = true, desc = "Preview HTTP request" })
--
-- keymap.set("n", "<leader>rr", "<Cmd>lua require('rest-nvim').run()<CR>", opts)
-- keymap.set("n", "<leader>rl", "<Cmd>lua require('rest-nvim').last()<CR>", opts)
-- keymap.set("n", "<leader>rp", "<Cmd>lua require('rest-nvim').preview()<CR>", opts)
