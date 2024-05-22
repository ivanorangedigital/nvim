return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>dt", ":NvimTreeToggle<CR>" },
		{ "<leader>dF", ":NvimTreeFindFile<CR>" },
		{ "<leader>df", ":NvimTreeFocus<CR>" },
		{ "<leader>dc", ":NvimTreeCollapse<CR>" },
	},
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- customize nvim-tree commands
		local function on_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- custom mappings
			vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
		end

		-- configure nvim-tree
		nvimtree.setup({
			view = {
				width = 30,
			},
			renderer = {
				group_empty = false,
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				dotfiles = false,
			},
			git = {
				enable = true,
				ignore = false,
			},
			on_attach = on_attach,
		})
	end,
}
