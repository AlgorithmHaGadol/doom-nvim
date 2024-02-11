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
				e = { name = "Explorer" },
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- Open File Explorer using <leader>e
		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
		keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "Find Current File in Explorer" })
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse File Explorer" })
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh File Explorer" })
	end,
	opts = {},
}
