return {
	{
		"navarasu/onedark.nvim",
		config = function()
			local od = require("onedark")
			od.setup({
				style = "darker",
			})
			od.load()
			local mode_color = require("doom.utils.ui").mode_color
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = mode_color[vim.fn.mode()] })

			vim.api.nvim_create_autocmd({ "ModeChanged" }, {
				callback = function()
					vim.api.nvim_set_hl(0, "CursorLineNr", { fg = mode_color[vim.fn.mode()] })
				end,
			})
		end,
	},
	{
		"HiPhish/nvim-ts-rainbow2",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-treesitter.configs").setup({
				rainbow = {
					enable = true,
					-- list of languages you want to disable the plugin for
					disable = { "jsx", "cpp" },
					-- Which query to use for finding delimiters
					query = "rainbow-parens",
					-- Highlight the entire buffer all at once
					strategy = require("ts-rainbow").strategy.global,
				},
			})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}

			local hooks = require("ibl.hooks")
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			end)

			require("ibl").setup({ indent = { highlight = highlight } })
		end,
	},
	{
		"NvChad/nvim-colorizer.lua",
		event = { "BufReadPre", "BufNewFile" },
		config = true,
	},
}
