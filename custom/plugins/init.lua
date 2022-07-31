return {
  -- autoclose tags in html, jsx etc
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact", "" },
    after = "nvim-treesitter",
    config = function()
      require("custom.plugins.smolconfigs").autotag()
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["fedepujol/move.nvim"] = {
    config = function()
      require("custom.plugins.smolconfigs").move()
    end,
  },

  -- dim inactive windows
  ["andreadev-it/shade.nvim"] = {
    module = "shade",
    config = function()
      require("custom.plugins.smolconfigs").shade()
    end,
  },

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["monaqa/dial.nvim"] = {},

  ["haringsrob/nvim_context_vt"] = {},

  ["wakatime/vim-wakatime"] = {},

  ["rafamadriz/friendly-snippets"] = {},

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
}
