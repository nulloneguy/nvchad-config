local M = {}

M.disabled = {
  n = {
    ["<C-c>"] = "",
  },
}

M.buffer = {
  n = {
    ["Q"] = {
      function()
        require("core.utils").close_buffer()
      end,
      "   close buffer",
    },
  },
}

M.nvterm = {
  t = { {} },
  n = { {} },
}

M.dial = {
  n = {
    ["<C-a>"] = {
      function()
        require("dial.map").inc_normal()
      end,
    },
    ["<C-x>"] = {
      function()
        require("dial.map").dec_normal()
      end,
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
