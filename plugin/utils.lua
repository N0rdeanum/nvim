local C = {}

local path_sep = vim.loop.os_uname().version:match "Windows" and "\\" or "/"

function C.join_paths(...)
  local result = table.concat({ ... }, path_sep)
  return result
end

function C.require_clean(module)
  local _, requested = pcall(require, module)
  return requested
end

return C
