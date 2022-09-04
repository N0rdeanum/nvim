local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use "wbthomason/packer.nvim" -- пакер установщик пакетов 

  use {
      "lunarvim/horizon.nvim",
      requires = { "tjdevries/colorbuddy.nvim" }
    }
 -- use {
 --   "svrana/neosolarized.nvim", -- тема Неосоларийз
 --   requires = { "tjdevries/colorbuddy.nvim" }
 -- }
  use "nvim-lualine/lualine.nvim" -- Статус линия
  use "nvim-lua/plenary.nvim" -- Доп утилиты
  use "onsails/lspkind-nvim" -- Вскодовские пиктограммы
  use "hrsh7th/cmp-buffer" -- nvim-cmp source for buffer words
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp source for neovim"s built-in LSP
  use "hrsh7th/nvim-cmp" -- Автокомплит
  use "neovim/nvim-lspconfig" -- LSP
  use "jose-elias-alvarez/null-ls.nvim" -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
--  use "mhartington/formatter.nvim"
  use "lukas-reineke/format.nvim"
  use "MunifTanjim/prettier.nvim" -- Prettier plugin for Neovim"s built-in LSP client
  use "williamboman/mason.nvim" -- менеджер LSP-formatier-debug плагинов
  use "williamboman/mason-lspconfig.nvim"  -- конфиг массона для LSP

  use "glepnir/lspsaga.nvim" -- LSP UIs
  use "L3MON4D3/LuaSnip" -- сниппиты
  use {
    "nvim-treesitter/nvim-treesitter", --продвинутый синтаксис кода
    run = ":TSUpdate" -- автоапдейт treesitter
  }
  use "kyazdani42/nvim-web-devicons" -- Иконки файлов

  -- Файловый менеджер/файловый браузер
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  -- Автокомплиты
  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  use "norcalli/nvim-colorizer.lua"
  use "folke/zen-mode.nvim"
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use "akinsho/nvim-bufferline.lua"
  -- use "github/copilot.vim"

  use "lewis6991/gitsigns.nvim"
  use "dinhhuy258/git.nvim" -- For git blame & browse

  -- comment
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"

  --отступы
  use "lukas-reineke/indent-blankline.nvim"

  use "voldikss/vim-floaterm"


end)

