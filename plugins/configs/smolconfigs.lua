local M = {}

M.autotag = function()
  local present, autotag = pcall(require, "nvim-ts-autotag")

  if present then
    autotag.setup()
  end
end

M.move = function()
  local present = pcall(require, "move")

  if not present then
    return
  end
end

return M
