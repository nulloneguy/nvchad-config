local M = {}

M.autotag = function()
   local present, autotag = pcall(require, "nvim-ts-autotag")

   if present then
      autotag.setup()
   end
end

M.move = function()
   local present, autotag = pcall(require, "move")

   if present then
      vim.api.nvim_set_keymap("n", "<A-j>", ":MoveLine(1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<A-k>", ":MoveLine(-1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("v", "<A-j>", ":MoveBlock(1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("v", "<A-k>", ":MoveBlock(-1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<A-l>", ":MoveHChar(1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<A-h>", ":MoveHChar(-1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("v", "<A-l>", ":MoveHBlock(1)<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("v", "<A-h>", ":MoveHBlock(-1)<CR>", { noremap = true, silent = true })
   end
end

return M
