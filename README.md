# nvim

Требуется [ Neovim ](https://neovim.io/) (>= 0.7)

- [ Node ] (https://nodejs.org/en/download/)

##  Настройка оболочки (macOS и Linux)

1.
  ```sh
  npm install --save-dev tree-sitter-cli
  ```
2.
  ```sh
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```

## Установка Конфига
  ```sh
  git clone https://github.com/N0rdeanum/nvim.git ~/.config/nvim
  ```

- [ Шрифты Nerd ] (https://github.com/ryanoasis/nerd-fonts) - Шрифты, пропатченные Powerline.
## lsp config 
- [ Lsp config ] (https://github.com/neovim/nvim-lspconfig)

## Настройки для Python
- [ Python 3.8 > ] (https://www.python.org/)
Install  language server [pyright]
  ```sh
  npm i -g pyright
  ```

## Настройка для React

для ts, react, js
  ```sh
  npm install -g typescript-language-server typescript
  ```

### если npm выдает ошибки ставим через sudo

## Запуск Neovim по команде vim

проверяем путь где стоит Neovim
  ```sh
  which nvim
  ``` 
путь -->> /opt/homebrew/bin/nvim

замена
  ```sh
  ln -s (which nvim) /opt/homebrew/bin/vim
  ```

# Кеймап
Leader = Space,  A = alt, C = Ctrl

## Терминал
- A-g = открыть/закрыть Lazygit
- A-d = открыть/закрыть Терминал
## Диагностика
- С-j = diagnostic_jump_next
- K   = hover_doc
- gd  = sp_finder
- C-k = signature_help
- gp  = preview_definition
- gr  = rename
## Файловый менеджер
- ;r  = live_grep
- ;t  = help_tags
- \\  = buffers
- sf  = file_browser


