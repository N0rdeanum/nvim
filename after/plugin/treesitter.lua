local status, ts = pcall(require, "nvim-treesitter.config")
if (not status) then
  return
end

ts.setup {

}
