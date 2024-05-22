return {
	"catppuccin/nvim",
	priority = 1000, -- load this plugin before all the others
	name = "catppuccin",
	config = function()
		local catppuccin = require("catppuccin")
		catppuccin.setup({
			flavour = "macchiato",
			transparent_background = true,
		})

		vim.cmd([[ colorscheme catppuccin ]])
	end,
}
