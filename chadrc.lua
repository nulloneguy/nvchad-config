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
        { name = "nvim_lsp" },
        { name = "luasnip" },
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
  transparency = true,
  theme = "rosepine",
  theme_toggle = { "resepine", "one_light" },
  statusline = {
    separator_style = "round",
  },
  hl_add = require("custom.highlights").new_hlgroups,
  hl_override = require("custom.highlights").overriden_hlgroups,
}

M.mappings = require "custom.mappings"

return M
