-- return {
--   {
--     "diegoulloao/neofusion.nvim",
--     priority = 1000,
--     config = true,
--     opts = {
--       terminal_colors = true,
--       transparent_mode = false,
--     },
--   },
-- }
--
--
--
--
-- return {
--   {
--     "diegoulloao/neofusion.nvim",
--     priority = 500,
--     config = function()
--       require("neofusion").setup({
--         terminal_colors = true, -- add neovim terminal colors
--         undercurl = true,
--         underline = true,
--         bold = true,
--         italic = {
--           strings = true,
--           emphasis = true,
--           comments = true,
--           operators = false,
--           folds = true,
--         },
--         strikethrough = true,
--         invert_selection = false,
--         invert_signs = false,
--         invert_tabline = false,
--         invert_intend_guides = false,
--         inverse = true, -- invert background for search, diffs, statuslines and errors
--         palette_overrides = {},
--         overrides = {
--           Normal = { bg = "NONE" },
--           NonText = { bg = "NONE" },
--           LineNr = { bg = "NONE" },
--           Folded = { bg = "NONE" },
--           EndOfBuffer = { bg = "NONE" },
--         },
--         dim_inactive = false,
--         transparent_mode = true,
--       })
--       vim.cmd([[ colorscheme neofusion ]])
--     end,
--   },
-- }

--
return {
  "lvim-tech/lvim-colorscheme",
  config = function()
    require("lvim-colorscheme").setup({
      style = "darks", -- или "darksoft", "light"
      -- transparent_mode = true,
      styles = {
        comments = { italic = true, bold = true },
        keywords = { italic = true, bold = true },
        functions = { italic = true, bold = true },
        variables = {},
      },
      sidebars = {},
      colors = {
        dark = {},
        darksoft = {},
        light = {},
      },
    })
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
}
