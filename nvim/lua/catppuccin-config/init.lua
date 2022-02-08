

local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup({colorscheme = "dark_catppuccino",
transparent_background = false,
term_colors = false,
styles = {
	comments = "italic",
	functions = "italic",
	keywords = "italic",
	strings = "NONE",
	variables = "NONE",
},
integrations = {
	treesitter = true,
	native_lsp = {
		enabled = true,
		virtual_text = {
			errors = "italic",
			hints = "italic",
			warnings = "italic",
			information = "italic",
		},
		underlines = {
			errors = "underline",
			hints = "underline",
			warnings = "underline",
			information = "underline",
		},
	},
	lsp_trouble = false,
        lsp_saga = false,
	cmp = false,
	lsp_saga = false,
	gitgutter = false,
	gitsigns = true,
	telescope = false,
	nvimtree = {
		enabled = true,
		show_root = true,
		transparent_panel = false,
	},
	which_key = false,
	indent_blankline = {
		enabled = false,
		colored_indent_levels = false,
	},
	dashboard = true,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = false,
	bufferline = false,
	markdown = true,
	lightspeed = false,
	ts_rainbow = false,
	hop = false,
	notify = true,
	telekasten = true,
}}) 
          
    
