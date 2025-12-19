-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Bootstrap Packer on new systems
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

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 
    "rose-pine/neovim", as = "rose-pine",
    config = function()
        vim.cmd('colorscheme rose-pine')
    end 
  } 

  use 'ThePrimeagen/vim-be-good'
  
  use (
    'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}
  )

  use 'nvim-treesitter/playground'
  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  -- Requires fonts: https://www.nerdfonts.com/font-downloads
  use {
  'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }

  if packer_bootstrap then 
    require('packer').sync()
  end
end)

