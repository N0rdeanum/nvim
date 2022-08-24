local status, M = pcall(require, "nvim-treesitter.configs")
if (not status) then
  return
end

M.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "cpp",
    "typescript",
    "markdown",
    "make",
    "c",
    "python",
    "tsx",
    "lua",
    "json",
    "css"
  },
  autotag = {
    enable = true,
  }
}
