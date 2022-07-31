local M = {}
local override = require "custom.override"

M.plugins = {
  remove = {
    "andymass/vim-matchup",
    "NvChad/nvterm",
  },
  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
    ["williamboman/mason.nvim"] = override.mason,
    ["goolord/alpha-nvim"] = override.alpha,
  },
  user = require "custom.plugins",
}

M.options = {
  require "custom.options",
}

M.ui = {
  theme = "ayu-dark",
  hl_add = require("custom.highlights").new_hlgroups,
  hl_override = require("custom.highlights").overriden_hlgroups,
}

M.mappings = require "custom.mappings"

return M
