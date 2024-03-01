-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- packer
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    -- use( { 'rose-pine/neovim',
    --  as = 'rose-pine'
    --     config = function()
    --         vim.cmd('colorschema rose-pine')
    --     end
    -- })
    --
    use ('ggandor/leap.nvim')

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'github/copilot.vim'
    use 'mhinz/vim-startify'
    use("nvim-tree/nvim-tree.lua")
    use("mbbill/undotree")
    use 'voldikss/vim-floaterm'
    -- vs-code like icons
    use("nvim-tree/nvim-web-devicons")
    use { "olimorris/onedarkpro.nvim" }
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = { 'JoosepAlviste/nvim-ts-context-commentstring' },
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,

    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },                -- Required
            { 'hrsh7th/cmp-nvim-lsp' },            -- Required
            { 'hrsh7th/cmp-buffer' },              -- Optional
            { 'hrsh7th/cmp-path' },                -- Optional
            { 'saadparwaiz1/cmp_luasnip' },        -- Optional
            { 'hrsh7th/cmp-nvim-lua' },            -- Optional
            { 'jose-elias-alvarez/null-ls.nvim' }, -- Optional
            { 'jay-babu/mason-null-ls.nvim' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
end)
