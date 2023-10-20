local set = vim.opt

set.number = true
set.autoindent = true
set.tabstop = 2
set.shiftwidth = 2
set.smarttab = true
set.termguicolors = true
set.clipboard = "unnamedplus"

-- add runtime path
set.runtimepath:append("~/.config/nvim/parsers")

vim.cmd([[ set noswapfile ]])
