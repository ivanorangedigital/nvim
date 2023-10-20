return {
	'catppuccin/nvim',
	priority = 1000, -- load this plugin before all the others
	name = 'catppuccin',
	opts = {
		flavour = "macchiato"
	},
	config = function()
		vim.cmd([[ colorscheme catppuccin ]])
	end
}
