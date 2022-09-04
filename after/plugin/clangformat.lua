local status, util = pcall(require, "formatter.util")
if (not status) then
  return
end

return function()
  return {
    exe = "clang-format",
    args = {
      "-assume-filename",
      util.escape_path(util.get_current_buffer_file_name()),
    },
    stdin = true,
    try_node_modules = true,
  }
end
