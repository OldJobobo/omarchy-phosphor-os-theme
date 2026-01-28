--   (                                     )  (
--   )\ )   )                 )         ( /(  )\ )
--  (()/(( /(              ( /(     (   )\())(()/(
--   /(_))\()) (  (  `  )  )\()) (  )( ((_)\  /(_))
--  (_))((_)\  )\ )\ /(/( ((_)\  )\(()\  ((_)(_))
--  | _ \ |(_)((_|(_|(_)_\| |(_)((_)((_)/ _ \/ __|
--  |  _/ ' \/ _ (_-< '_ \) ' \/ _ \ '_| (_) \__ \
--  |_| |_||_\___/__/ .__/|_||_\___/_|  \___/|___/
--                |_|                                                                                                                         ███    ███
--

return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#0f191c",
				bg_dark = "#0f191c",
				bg_highlight = "#ffd700",

				-- Foreground colors
				-- fg: Object properties, builtin types, builtin variables, member access, default text
				fg = "#507350",
				-- fg_dark: Inactive elements, statusline, secondary text
				fg_dark = "#409931",
				-- comment: Line highlight, gutter elements, disabled states
				comment = "#ffd700",

				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#688060",
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#688060",
				-- yellow: Types, classes, constructors, warnings, numbers, booleans
				yellow = "#90d762",
				-- green: Comments, strings, success states, git additions
				green = "#faff00",
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#4f7e7e",
				-- blue: Functions, keywords, directories, links, info diagnostics
				blue = "#11ff25",
				-- purple: Storage keywords, special keywords, identifiers, namespaces
				purple = "#c1ff8a",
				-- magenta: Function declarations, exception handling, tags
				magenta = "#c1ff8a",
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}

--
--      )
--   ( /(  (  (               )        )
--   )\()) )\ )\ )  (      ( /(     ( /(
--  ((_)\ ((_|()/(  )\  (  )\()) (  )\()) (
--    ((_) _  ((_))((_) )\((_)\  )\((_)\  )\
--   / _ \| | _| |_ | |((_) |(_)((_) |(_)((_)
--  | (_) | / _` | || / _ \ '_ Y _ \ '_ Y _ \
--   \___/|_\__,_|\__/\___/_.__|___/_.__|___/
--
--  25-01-26
