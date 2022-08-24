local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- Темы
  use {
    "svrana/neosolarized.nvim",
    requires = { "tjdevries/colorbuddy.nvim" }
  }
  use "kyazdani42/nvim-web-devicons" -- Значки файлов
  use "glepnir/lspsaga.nvim" -- UIs
  use "L3MON4D3/LuaSnip" -- snippet
  use "hoob3rt/lualine.nvim" -- Строка состояния
  use "onsails/lspkind-nvim" -- vscode-like pictograms
  use "hrsh7th/cmp-buffer" -- nvim-cmp source for buffer words
  use "hrsh7th/cmp-nvim-lsp" -- nvim-cmp source for neovim's built-in LSP
  use "hrsh7th/nvim-cmp" -- Completion
  use "neovim/nvim-lspconfig" -- LSP
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use "jose-elias-alvarez/null-ls.nvim" --Используеться Neovim в качестве языкового сервера для внедрения диагностики LSP, кодовых действий и многого другого через Lua
  use "MunifTanjim/prettier.nvim" -- Плагин Prettier для встроенного LSP клиента Neovim

  use "windwp/nvim-autopairs"
  use "windwp/nvim-ts-autotag"

  use "nvim-lua/plenary.nvim" -- Comon utilites
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"

  use "akinsho/nvim-bufferline.lua"
  use "norcalli/nvim-colorizer.lua"

  -- Git
  use "lewis6991/gitsigns.nvim"
  use "dinhhuy258/git.nvim" --for git blame & browser
end)
