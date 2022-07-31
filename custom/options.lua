local opt = vim.opt
local g = vim.g

-- use filetype.lua instead of filetype.vim
g.did_load_filetypes = 0
g.do_filetype_lua = 1

opt.fileencoding = "utf-8"

opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.hlsearch = true
opt.wrap = false
opt.scrolloff = 12

opt.title = true
opt.clipboard = "unnamedplus"
opt.cul = false -- cursor line
opt.guifont = "JetBrains Mono:h8"

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.swapfile = false
opt.writebackup = false
opt.updatetime = 0
