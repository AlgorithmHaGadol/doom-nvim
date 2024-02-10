local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true
opt.wrap = false

-- tabs / indentations
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- cursor / mouse
opt.cursorline = true
opt.mouse = "a"
vim.api.nvim_set_option("updatetime", 300)

-- appearances
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- coding / completion
opt.syntax = "enable"
opt.shortmess = opt.shortmess + { c = true }
opt.completeopt = { "menuone", "noselect", "noinsert" }

-- split windows
opt.splitright = true
opt.splitbelow = true

-- backspace
opt.backspace = { "indent", "eol", "start" }

-- clipboards
opt.clipboard:append("unnamedplus")

-- swapfile
opt.swapfile = false

-- single statusbar
opt.laststatus = 3
