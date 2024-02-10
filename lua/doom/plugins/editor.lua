return {
	-- For Surrounding Text with
	{
		"kylechui/nvim-surround",
		event = { "BufReadPre", "BufNewFile" },
		version = "*",
		config = true,
	},
	-- Making Commenting easier
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			-- import comment plugin safely
			local comment = require("Comment")
			comment.setup({})
		end,
	},
	-- Beautiful todo Highlighting
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			keywords = {
				TEST = { icon = "" },
			},
		},
	},
}
