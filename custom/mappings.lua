-- lua/custom/mappings
local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
   n = {
      ["<leader>h"] = "",
   },
}

M.buf = {
   n = {
      ["Q"] = {
         function()
            require("core.utils").close_buffer()
         end,
         "   close buffer",
      },
   },
}

M.dial = {
   n = {
      ["<C-a>"] = {
         function()
            require("dial.map").inc_normal()
         end,
      },
      ["<C-a>"] = {
         function()
            require("dial.map").inc_normal()
         end,
      },
   },
}

return M
