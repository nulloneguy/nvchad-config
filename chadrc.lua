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

    ["hrsh7th/nvim-cmp"] = {
      sources = {
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "treesitter" },
      },
      experimental = { ghost_text = true },
    },
  },
  user = require "custom.plugins",
}

M.ui = {
  theme = "ayu-dark",
  theme_toggle = { "ayu-dark", "one_light" },
  hl_add = require("custom.highlights").new_hlgroups,
  hl_override = require("custom.highlights").overriden_hlgroups,
}

M.mappings = require "custom.mappings"

return M
