-- ref here: https://github.com/wbthomason/packer.nvim
--

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- autosave nvim
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then 
  return
end

return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- the packer
  use 'nvim-lua/plenary.nvim'

  -- plugins here
  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'
  use 'tpope/vim-surround'
  use 'numToStr/Comment.nvim'
  use 'nvim-tree/nvim-tree.lua'

  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  use({ 'nvim-telescope/telescope.nvim', branch = '0.1.x' })

  -- all the beauty things
  -- colorscheme
  use 'bluz71/vim-nightfly-guicolors'
  use 'nvim-lualine/lualine.nvim'
  -- icons
  use 'kyazdani42/nvim-web-devicons'

  if packer_bootstrap then
    require("packer").sync()
  end
end)
