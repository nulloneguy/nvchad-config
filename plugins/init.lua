return {
  -- autoclose tags in html, jsx etc
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact", "javascriptvue" },
    after = "nvim-treesitter",
    config = function()
      require("custom.plugins.configs.smolconfigs").autotag()
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },

  -- dim inactive windows
  ["andreadev-it/shade.nvim"] = {
    module = "shade",
    config = function()
      require("custom.plugins.configs.smolconfigs").shade()
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

  ["monaqa/dial.nvim"] = {},

  ["haringsrob/nvim_context_vt"] = {},

  ["wakatime/vim-wakatime"] = {},

  ["rafamadriz/friendly-snippets"] = {},
}
