-- This file can be loaded by calling `lua require('plugins')` from your init.vim

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
-- use( { 'rose-pine/neovim',
--  as = 'rose-pine'
--     config = function()
--         vim.cmd('colorschema rose-pine')
--     end      
-- })
--

use("nvim-tree/nvim-tree.lua")

-- vs-code like icons
use("nvim-tree/nvim-web-devicons")
    use ({
        "rose-pine/neovim",
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
	    use {
        'nvim-treesitter/nvim-treesitter',
        requires = { 'JoosepAlviste/nvim-ts-context-commentstring' },
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,

    }
    

end)

