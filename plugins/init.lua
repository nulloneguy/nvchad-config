return {
  -- autoclose tags in html, jsx etc
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact", "javascriptvue" },
    after = "nvim-treesitter",
    config = function()
      require("custom.plugins.configs.smolconfigs").autotag()
    end,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    event = "VimEnter",
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  -- ["haringsrob/nvim_context_vt"] = {},

  ["wakatime/vim-wakatime"] = {},

  ["rafamadriz/friendly-snippets"] = {},
}
