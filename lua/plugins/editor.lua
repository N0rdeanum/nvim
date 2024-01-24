--[[

  Конфигурация Telescope

  Эта конфигурация настраивает Telescope.nvim для улучшенной навигации по файлам,
  поиска и других полезных функций.

  Использование:
  local telescope_config = require('telescope-config')
  telescope_config.setup()

  Опции конфигурации:
  - dependencies: Дополнительные плагины, необходимые для работы Telescope.
  - keys: Настройки клавиш для команд Telescope.
  - config: Пользовательская конфигурация Telescope.

  Пример:
  local telescope_config = require('telescope-config')
  telescope_config.setup({
    dependencies = {
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = {
      -- Добавьте свои настройки клавиш здесь
    },
    config = function(_, opts)
      -- Настройте свою конфигурацию Telescope здесь
    end,
  })

--]]

return {
  "telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
  },
  keys = {
    {
      -- Найти файлы в плагинах
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({
          swd = require("lazy.core.config").options.root,
        })
      end,
      desc = "Найти файл плагина",
    },
    {
      -- Общий поиск файлов
      ";f",
      function()
        local builtin = require("telescope.builtin")
        builtin.find_files({
          no_ignore = false,
          hidden = true,
        })
      end,
    },
    {
      -- Поиск в файлах (live grep)
      ";r",
      function()
        local builtin = require("telescope.builtin")
        builtin.live_grep()
      end,
    },
    {
      -- Открыть список буферов
      "\\\\",
      function()
        local builtin = require("telescope.builtin")
        builtin.buffers()
      end,
    },
    {
      -- Поиск по справке
      ";t",
      function()
        local builtin = require("telescope.builtin")
        builtin.help_tags()
      end,
    },
    {
      -- Восстановить последнюю сессию Telescope
      ";;",
      function()
        local builtin = require("telescope.builtin")
        builtin.resume()
      end,
    },
    {
      -- Поиск диагностик
      ";e",
      function()
        local builtin = require("telescope.builtin")
        builtin.diagnostics()
      end,
    },
    {
      -- Поиск по дереву синтаксического разбора
      ";s",
      function()
        local builtin = require("telescope.builtin")
        builtin.treesitter()
      end,
    },
    {
      -- Открыть файловый браузер для текущего буфера
      "sf",
      function()
        local telescope = require("telescope")
        local function telescope_buffer_dir()
          return vim.fn.expand("%:p:h")
        end
        telescope.extensions.file_browser.file_browser({
          path = "%:p:h",
          swd = telescope_buffer_dir(),
          respect_gitignore = false,
          hidden = true,
          grouped = true,
          previewer = false,
          initial_mode = "normal",
          layout_config = { height = 40 },
        })
      end,
    },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local fb_actions = require("telescope").extensions.file_browser.actions

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults, {
      wrap_result = true,
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = {
        n = {},
      },
    })
    opts.pickers = {
      diagnostics = {
        theme = "ivy",
        initial_mode = "normal",
        layout_config = {
          preview_cutoff = 9999,
        },
      },
    }
    opts.extensions = {
      file_browser = {
        theme = "dropdown",
        hijack_netrw = true,
        mappings = {
          ["n"] = {
            ["N"] = fb_actions.create,
            ["h"] = fb_actions.goto_parent_dir,
            ["/"] = function()
              vim.cmd("startinsert")
            end,
            ["<C-u>"] = function(prompt_bufnr)
              for i = 1, 10 do
                actions.move_selection_previous(prompt_bufnr)
              end
            end,
            ["<C-d>"] = function(prompt_bufnr)
              for i = 1, 10 do
                actions.move_selection_next(prompt_bufnr)
              end
            end,
            ["<PageUp>"] = actions.preview_scrolling_up,
            ["<PageDown>"] = actions.preview_scrolling_down,
          },
        },
      },
    }
    telescope.setup(opts)
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("file_browser")
  end,
}
