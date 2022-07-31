-- commands
local new_cmd = vim.api.nvim_create_user_command

require "custom.options"

require "custom.autocmds"

require("luasnip.loaders.from_vscode").lazy_load { paths = { "./snippets/vue" } }

new_cmd("EnableShade", function()
  require("shade").setup()
end, {})
