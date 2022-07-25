return {

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.configs.null-ls"
    end,
  },

  ["goolord/alpha-nvim"] = { -- start screen
    disable = false,
    config = function()
      require "custom.plugins.configs.alpha"
    end,
  },

  ["wakatime/vim-wakatime"] = {},

  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact", "javascriptvue" },
    after = "nvim-treesitter",
    config = function()
      require("custom.plugins.configs.smolconfigs").autotag()
    end,
  },

  ["monaqa/dial.nvim"] = {},

  ["fedepujol/move.nvim"] = {
    config = function()
      require("custom.plugins.configs.smolconfigs").move()
    end,
  },

  ["haringsrob/nvim_context_vt"] = {},

  ["antonk52/bad-practices.nvim"] = {},
}
