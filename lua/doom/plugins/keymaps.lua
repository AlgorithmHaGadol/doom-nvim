return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup({
			key_labels = {
				["<leader>"] = "SPC",
				["<space>"] = "SPC",
				["<CR>"] = "RET",
				["<tab>"] = "TAB",
			},
		})
	end,
	config = function()
		require("which-key").register({
			["<leader>"] = {
				b = { name = "Buffer" },
				t = { name = "Tab" },
				w = { name = "Window" },
				q = { name = "Quit" },
			},
		})
	end,
	opts = {},
}
