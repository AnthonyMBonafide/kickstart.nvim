vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Disable NETRW in favor of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
require('settings')
require('lazyplugins')
require('lsp')
require('keymaps')
require('plugins')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
