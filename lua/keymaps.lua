-- Navigation
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })
vim.keymap.set('n', 'J', '5j', { noremap = true })
vim.keymap.set('n', 'K', '5k', { noremap = true })
vim.keymap.set({ 'n' }, '<leader>S', ':w<cr>', { noremap = true, desc = 'Save File' })

-- Pane navigation
vim.keymap.set('n', '<C-l>', '<C-w>l>', { noremap = true })
vim.keymap.set('n', '<C-h>', '<C-w>h>', { noremap = true })
vim.keymap.set('n', '<C-j>', '<C-w>j>', { noremap = true })
vim.keymap.set('n', '<C-k>', '<C-w>k>', { noremap = true })

-- TODO map leader q to quit file quickly
-- TODO map something to quickly open up directly listing(file explorer)
--
vim.keymap.set("n", "<leader>dl", vim.cmd.Ex, { desc = "Open Directory Listing NetRW" })

-- Move higlighted text up and down and also formatting as text is moved, like
-- in an if statement
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted text up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted text down" })

-- Enhances regular NVIM J which appends the line after the current one to the
-- current line. However, this keeps the cursor at the front of the line rather
-- continously moving to the end of the line during sucessive uses.
vim.keymap.set("n", "<leader>j", "mzJ`z", { desc = "Append next line to current line" })
-- Half page jumping like usual but keep cursor in middle of screen for less
-- disorientation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep search target in the middle of the screen, less disorienting when doing
-- this a lot quickly
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Update to P but this keeps the original text that was pasted in the register
-- rather than the text that was removed being put into the register.
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = 'Paste without replacing register' })

-- Yank text into OS clipboard which can be used outside of NVIM
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = 'yank into OS clipboard' })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = 'Yank into OS clipboard' })

-- Delete without adding to paste register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = 'Delete without adding to register' })

-- Switch between projects
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>",
  { desc = 'Switch between TMUX sessions' })
-- Format code
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = 'Format code' })

-- TODO fix so they do not collide with pane navigation.
-- Quick fixes for errors
--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the word that is under your cursor, start typing right away
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
