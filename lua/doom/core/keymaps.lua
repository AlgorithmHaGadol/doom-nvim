-- Set <leader> key
vim.g.mapleader = " " -- SPC
local keymap = vim.keymap

-- fix x key to not save deleted character
keymap.set("n", "x", "_x")

-- Quick ESC using jk (insert)
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Move line(s) up/down with ALT + j/k
keymap.set("n", "<A-j>", "<cmd>m .+1<CR>", { desc = "Move Line Down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<CR>", { desc = "Move Line Up" })
keymap.set("i", "<A-k>", "<Esc><cmd>m .-2<CR>==gi", { desc = "Move Line Up" })
keymap.set("i", "<A-j>", "<Esc><cmd>m .+1<CR>==gi", { desc = "Move Line Down" })
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })
-- Move line(s) up/down with ALT + Up/Down Arrow
keymap.set("n", "<A-Down>", "<cmd>m .+1<CR>", { desc = "Move Line Down" })
keymap.set("n", "<A-Up>", "<cmd>m .-2<CR>", { desc = "Move Line Up" })
keymap.set("i", "<A-Down>", "<Esc><cmd>m .+1<CR>==gi", { desc = "Move Line Down" })
keymap.set("i", "<A-Up>", "<Esc><cmd>m .-2<CR>==gi", { desc = "Move Line Up" })
keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

-- Clear Highlights from search
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear Search Highlights" })

-- Inc/Dec Numbers with <leader>+/-
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment Number" })
keymap.set("n", "<leader>-", "<C-a>", { desc = "Decrement Number" })

-- Window Commands using <leader>w
keymap.set("n", "<leader>ws", "<cmd>wincmd s<CR>", { desc = "Horizontal Split" })
keymap.set("n", "<leader>wv", "<cmd>wincmd v<CR>", { desc = "Vertical Split" })
keymap.set("n", "<leader>wq", "<cmd>close<CR>", { desc = "Close Window" })
keymap.set("n", "<leader>ww", "<cmd>wincmd w<CR>", { desc = "Next Window" })
keymap.set("n", "<leader>wW", "<cmd>wincmd W<CR>", { desc = "Previous Window" })
keymap.set("n", "<leader>wh", "<cmd>wincmd h<CR>", { desc = "Go to the left window" })
keymap.set("n", "<leader>wj", "<cmd>wincmd j<CR>", { desc = "Go to the window below" })
keymap.set("n", "<leader>wk", "<cmd>wincmd k<CR>", { desc = "Go to the window above" })
keymap.set("n", "<leader>wl", "<cmd>wincmd l<CR>", { desc = "Go to the right window" })
keymap.set("n", "<leader>wo", "<cmd>wincmd o<CR>", { desc = "Close all other windows" })
keymap.set("n", "<leader>wx", "<cmd>wincmd x<CR>", { desc = "Swap Current with Next" })
keymap.set("n", "<leader>wT", "<cmd>wincmd T<CR>", { desc = "Breakout into a new tab" })
keymap.set("n", "<leader>w<", "<cmd>wincmd 5< <CR>", { desc = "Decrease(5) Width" })
keymap.set("n", "<leader>w>", "<cmd>wincmd 5> <CR>", { desc = "Increase(5) Width" })
keymap.set("n", "<leader>w-", "<cmd>wincmd 5- <CR>", { desc = "Decrease(5) Height" })
keymap.set("n", "<leader>w+", "<cmd>wincmd 5+ <CR>", { desc = "Increase(5) Width" })
keymap.set("n", "<leader>we", "<cmd>wincmd = <CR>", { desc = "Equal Width and Height" })
keymap.set("n", "<leader>w_", "<cmd>wincmd _ <CR>", { desc = "Max out Height" })
keymap.set("n", "<leader>w|", "<cmd>wincmd | <CR>", { desc = "Max out Width" })

-- Tab Commands using <leader>t
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open New Tab" })
keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close Current Tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to Next Tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to Previous Tab" })
keymap.set("n", "<leader>tf", "<cmd>tab %<CR>", { desc = "Open Current File in New Tab" })
