return {
  {
    -- folke/noice.nvim: Плагин для улучшенных уведомлений
    "folke/noice.nvim",
    opts = function(_, opts)
      -- Добавление фильтра для события "notify" с текстом "Нет доступной информации"
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "Нет доступной информации",
        },
        opts = { skip = true },
      })
      -- Включение рамки для документации LSP
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    -- rcarriga/nvim-notify: Плагин для отображения уведомлений
    "rcarriga/nvim-notify",
    opts = {
      -- Таймаут для уведомлений (в миллисекундах)
      timeout = 10000,
    },
  },

  -- buferline
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>bufferLineCycleNext<CR>", desc = "Next Tab" },
      { "<S-Tab>", "<Cmd>bufferLineCyclePrev<CR>", desc = "Prev Tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },

  -- filename
  {
    "b0o/incline.nvim",
    dependense = { "craftzdog/solarized-osaka.nvim" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("solarized-osaka.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = colors.magenta500, guifg = colors.base4 },
            InclineNormalNC = { guifg = colors.violet500, guibg = colors.base03 },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
      ███╗   ██╗ ██████╗ ██████╗ ██████╗ ███████╗ █████╗ ███╗   ██╗██╗   ██╗███╗   ███╗
      ████╗  ██║██╔═████╗██╔══██╗██╔══██╗██╔════╝██╔══██╗████╗  ██║██║   ██║████╗ ████║
      ██╔██╗ ██║██║██╔██║██████╔╝██║  ██║█████╗  ███████║██╔██╗ ██║██║   ██║██╔████╔██║
      ██║╚██╗██║████╔╝██║██╔══██╗██║  ██║██╔══╝  ██╔══██║██║╚██╗██║██║   ██║██║╚██╔╝██║
      ██║ ╚████║╚██████╔╝██║  ██║██████╔╝███████╗██║  ██║██║ ╚████║╚██████╔╝██║ ╚═╝ ██║
      ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚═╝
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },

  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
  --logo
}
