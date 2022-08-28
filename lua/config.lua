vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8' -- кодирование сценариев
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true -- включение строковых номеров

vim.opt.title = true
vim.opt.autoindent = true -- автоматический отступ
vim.opt.smartindent = true -- умный отступ
vim.opt.hlsearch = true
vim.opt.backup = false -- резервное копирование 
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2 -- последний статус 
vim.opt.expandtab = true -- развернуть вкладку
vim.opt.scrolloff = 10 -- прокрутка
vim.opt.shell = 'fish' -- shell оболочка
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true -- умная вкладка
vim.opt.breakindent = true
vim.opt.shiftwidth = 4 -- ширина сдвига
vim.opt.tabstop = 4 -- Табуляция
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- что бы команды работали с латиницей
vim.opt.langmap= "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
