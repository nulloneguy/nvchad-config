local api = vim.api
local autocmd = api.nvim_create_autocmd

-- autocmds
autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { timeout = 200 }
  end,
})
