local api = vim.api
local autocmd = api.nvim_create_autocmd

-- Dynamic terminal padding with/without nvim (for siduck's st only)
-- replace string from file
local function sed(from, to, fname)
  vim.cmd(string.format("silent !sed -i 's/%s/%s/g' %s", from, to, fname))
end

-- reloads xresources for current focused window only
local function liveReload_xresources()
  vim.cmd(
    string.format "silent !xrdb merge ~/.Xresources && kill -USR1 $(xprop -id $(xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')"
  )
end

autocmd({ "VimEnter" }, {
  callback = function(ctx)
    -- remove terminal padding
    -- exclude when nvim has norg ft & more than 2 buffers

    sed("st.borderpx: 20", "st.borderpx: 0", "~/.Xresources")
    liveReload_xresources()

    -- revert xresources change but dont reload it
    sed("st.borderpx: 0", "st.borderpx: 20", "~/.Xresources")

    vim.cmd(string.format "silent !xrdb merge ~/.Xresources")
    vim.api.nvim_del_autocmd(ctx.id)
  end,
})

-- add terminal padding
autocmd("VimSuspend", {
  callback = function()
    sed("st.borderpx: 0", "st.borderpx: 20", "~/.Xresources")
    liveReload_xresources()
  end,
})

-- Yank highlight
autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { timeout = 200 }
  end,
})
