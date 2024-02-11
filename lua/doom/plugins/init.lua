return {
	"nvim-lua/plenary.nvim", -- needed by other plugins
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	"windwp/nvim-ts-autotag",
	-- TODO: Possibly Rewrite this one too
	{
		"szw/vim-maximizer", -- Maximize window splits
		keys = {
			{ "<leader>wm", "<cmd>MaximizerToggle<CR>", desc = "Toggle Maximize" },
		},
	},

	-- TODO: Rewrite DOOM Themes and colors including doom-one
	"GustavoPrietoP/doom-themes.nvim", -- themes for doom
	"NTBBloodbath/doom-one.nvim", -- also a theme
	-- TODO: Rewrite numbertoggle
	"sitiom/nvim-numbertoggle", -- Line Number toggle based on file
}
