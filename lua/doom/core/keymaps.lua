-- Set <leader> key
vim.g.mapleader = " " -- SPC

-- Move line(s) up/down with ALT + j/k
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<CR>")
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<CR>")
vim.keymap.set("i", "<A-k>", "<Esc><cmd>m .-2<CR>==gi")
vim.keymap.set("i", "<A-j>", "<Esc><cmd>m .+1<CR>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")
-- Move line(s) up/down with ALT + Up/Down Arrow
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<CR>")
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<CR>")
vim.keymap.set("i", "<A-Down>", "<Esc><cmd>m .+1<CR>==gi")
vim.keymap.set("i", "<A-Up>", "<Esc><cmd>m .-2<CR>==gi")
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv")
