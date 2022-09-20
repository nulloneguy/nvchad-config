local M = {}

M.disabled = {
  n = {
    ["<C-c>"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
    ["<leader>h"] = "",
    ["<leader>v"] = "",
  },
  t = {
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
  },
}

M.buffer = {
  n = {
    ["Q"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "   close buffer",
    },
  },
}


M.move = {
  n = {
    ["<A-j>"] = { "<cmd> : <CR>", "  move line down", opts = { noremap = true, silent = true } },
    ["<A-k>"] = { "<cmd> : <CR>", "  move line up", opts = { noremap = true, silent = true } },
  },

  v = {
    ["<A-j>"] = { "<cmd> : <CR>", "  move line down", opts = { noremap = true, silent = true } },
    ["<A-k>"] = { "<cmd> : <CR>", " move line up", opts = { noremap = true, silent = true } },
  },
}

M.shade = {
  n = {
    ["<leader>s"] = {
      function()
        require("shade").toggle()
      end,

      "   toggle shade.nvim",
    },
  },
}

return M
