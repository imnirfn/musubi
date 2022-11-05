-- prefix leader key
vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "x", "_n") -- do not save deleted things in buffer la sial

-- plugins keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- let em splitsss
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizantally
keymap.set("n", "<leader>se", "<C-w>=") -- equal split windows
keymap.set("n", "<leader>sx", ":close<CR>") -- close window

-- tabs
keymap.set("n", "to", ":tabnew<CR>") -- new tab
keymap.set("n", "tx", ":tabclose<CR>") -- close tab
keymap.set("n", "tn", ":tabn<CR>") -- next tab
keymap.set("n", "tp", ":tabp<CR>") -- previous tab

