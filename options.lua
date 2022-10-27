local opt = vim.opt

opt.fileencoding = "utf-8"

opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.hlsearch = true
opt.wrap = false
opt.scrolloff = 12

opt.title = false
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
opt.timeoutlen = 200
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.swapfile = false
opt.writebackup = false
opt.updatetime = 0
