local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- ref here: https://github.com/nvim-tree/nvim-tree.lua
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
  renderer =  {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "↠",
          arrow_open = "↡",
        },
      },
    },
  },
})
