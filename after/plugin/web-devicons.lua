local status, icons = pcall(require, "nvim-web-dvicons")
if (not status) then
  return
end

icons.setup {
  override = {},
  default = true
}
