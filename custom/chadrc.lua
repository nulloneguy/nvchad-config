-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "ayu-dark",
}

M.options = {
  user = function()
    require "custom.options"
  end,
}

M.plugins = {
  user = require "custom.plugins",
  remove = {
    "andymass/vim-matchup",
    "NvChad/nvterm",
  },
  options = {
    --lspconfig = {
    --  setup_lspconf = "custom.plugins.configs.lspconfig",
    --},
  },
}

M.mappings = require "custom.mappings"

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

return M
