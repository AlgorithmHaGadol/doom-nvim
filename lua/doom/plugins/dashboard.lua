return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dash = require("alpha.themes.dashboard")
		dash.section.header.val = {

			[[    =================     ===============     ===============   ========  ========   ]],
			[[    \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //   ]],
			[[    ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||   ]],
			[[    || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||   ]],
			[[    ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||   ]],
			[[    || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||   ]],
			[[    ||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||   ]],
			[[    || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||   ]],
			[[    ||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||   ]],
			[[    ||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||   ]],
			[[    ||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||   ]],
			[[    ||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||   ]],
			[[    ||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||   ]],
			[[    ||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||   ]],
			[[    ||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||   ]],
			[[    ||.=='    _-'                                                     `' |  /==.||   ]],
			[[    =='    _-'                        N E O V I M                         \/   `==   ]],
			[[    \   _-'                                                                `-_   /   ]],
			[[     `''                                                                      ``'    ]],
		}

		dash.section.buttons.val = {
			dash.button("SPC SPC", "Open Project"),
			dash.button("SPC f f", "Find File"),
			dash.button("SPC f r", "Recentl Files"),
			dash.button("SPC f g", "Live Grep (Find Text)"),
			dash.button("SPC RET", "Bookmarks"),
			dash.button("SPC q q", "Quit DOOM"),
		}

		local function footer()
			return "... Work Smart, Not Hard ..."
		end
		dash.section.footer.val = footer()
		dash.opts.opts.noautocmd = true
		alpha.setup(dash.opts)
	end,
}
