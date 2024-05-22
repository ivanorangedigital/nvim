local g = vim.g

g.mapleader = " "

local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

-- split keympas

-- vertical split
keymap("n", "<leader>vs", ":vs<CR>", opts)

-- horizontal split
keymap("n", "<leader>hs", ":split<CR>", opts)

-- end split keympas

-- tab keymaps

-- open new tab
keymap("n", "<leader>tnw", ":tabnew<CR>", opts)
-- prev tab
keymap("n", "<leader>tp", ":tabprev<CR>", opts)
-- next tab
keymap("n", "<leader>tn", ":tabnext<CR>", opts)
-- close tab
keymap("n", "<leader>tc", ":tabclose<CR>", opts)

-- end tab keymaps

-- write / quit keymaps

-- save file
keymap("n", "<leader>w", ":w<CR>", opts)
-- quit file
keymap("n", "<leader>q", ":q<CR>", opts)
-- save and quit file
keymap("n", "<leader>wq", ":wq<CR>", opts)
-- quit file force
keymap("n", "<leader>!q", ":q!<CR>", opts)

-- end write / quit keymaps

-- custom keymap

local function searchAndReplace()
	vim.ui.input({ prompt = "Search And Replace: " }, function(input)
		if input == nil then
			return
		end
		local command = "%s/" .. input .. "/g"
		vim.cmd(command)
	end)
end

vim.keymap.set("n", "<leader>sr", searchAndReplace, opts)
