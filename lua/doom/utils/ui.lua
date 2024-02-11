local M = {}

--[[ create_select_menu()
-- Create a menu to execute a Vim command or Lua function using vim.ui.select()
-- Example usage:
-- local options = {
--   [1. Onedark ] = "colo onedark"
--   [2. Tokyonight ] = function() vim.cmd("colo tokyonight") end
-- }
-- create_select_menu("Choose a M.colors.heme", options)
--
-- @arg prompt: the prompt to display
-- @arg options_table: Table of the form { [n. Display name] = lua-function/vim-cmd, ... }
--                    The number is used for the sorting purpose and will be replaced by vim.ui.select() numbering
--]]
M.create_select_menu = function(prompt, options_table)
	-- Given the table of options, populate a list with option display names
	local option_names = {}
	local n = 0
	for i, _ in pairs(options_table) do
		n = n + 1
		option_names[n] = i
	end
	table.sort(option_names)

	-- Return the prompt function. These global function var will be used when assigning keybindings
	local menu = function()
		vim.ui.select(
			option_names, --> the list we populated above

			{
				prompt = prompt, --> Prompt passed as the argument
				-- Remove this variable if you want to keep the numbering in front of option names
				format_item = function(item)
					return item:gsub("%d. ", "")
				end,
			},

			function(choice)
				local action = options_table[choice]
				-- When user inputs ESC or q, don't take any actions
				if action ~= nil then
					if type(action) == "string" then
						vim.cmd(action)
					elseif type(action) == "function" then
						action()
					end
				end
			end
		)
	end

	return menu
end

M.colors = {
	bg = "#282c34",
	fg = "#abb2bf",
	yellow = "#ECBE7B",
	cyan = "#008080",
	darkblue = "#081633",
	green = "#98c379",
	orange = "#FF8800",
	violet = "#a9a1e1",
	magenta = "#c678dd",
	blue = "#51afef",
	red = "#e06c75",
}

M.mode_color = {
	n = M.colors.red,
	i = M.colors.green,
	v = M.colors.blue,
	[""] = M.colors.blue,
	V = M.colors.blue,
	c = M.colors.magenta,
	no = M.colors.red,
	s = M.colors.orange,
	S = M.colors.orange,
	[""] = M.colors.orange,
	ic = M.colors.yellow,
	R = M.colors.violet,
	Rv = M.colors.violet,
	cv = M.colors.red,
	ce = M.colors.red,
	r = M.colors.cyan,
	rm = M.colors.cyan,
	["r?"] = M.colors.cyan,
	["!"] = M.colors.red,
	t = M.colors.red,
}

return M
