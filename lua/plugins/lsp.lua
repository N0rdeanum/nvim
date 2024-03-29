return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "luacheck",
        "selene",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "cmake-language-server",
        "cmakelint",
        "clangd",
        "html-lsp",
        "bash-language-server",
      })
    end,
  },
}
