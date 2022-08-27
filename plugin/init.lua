local C = {}

function C:init()
  require "plugin.lsp-installer"
  require("plugin.handlers").setup()
end

return C
