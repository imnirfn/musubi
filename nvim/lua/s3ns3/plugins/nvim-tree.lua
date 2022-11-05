local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- ref here: https://github.com/nvim-tree/nvim-tree.lua
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup()
