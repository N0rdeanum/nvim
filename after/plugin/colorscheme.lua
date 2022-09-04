local colorscheme = "horizon"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
  return
end
