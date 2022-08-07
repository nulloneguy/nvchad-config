-- commands
local new_cmd = vim.api.nvim_create_user_command

require "custom.options"

require "custom.autocmds"

new_cmd("EnableShade", function()
  require("shade").setup()
end, {})
