local status, prettier = pcall(require, "prettier")
if (not status) then
  return
end

prettier.setup {
  bin = "prettier",
  filetypes = {
    "css",
    "html",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less"
  }
}
