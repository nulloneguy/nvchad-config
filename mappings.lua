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

return M
