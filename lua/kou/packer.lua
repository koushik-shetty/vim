vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    use {
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    }

    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    --
    -- THEMES
    --
    use({
        'navarasu/onedark.nvim',
        priority = 1000,
    })
    use 'martinsione/darkplus.nvim'
    --    use {'morhetz/gruvbox', config = function() vim.cmd.colorscheme("gruvbox") end }
    --    use {'desertEx', config = function() vim.cmd.colorscheme("desertx") end }
    use 'Mofiqul/vscode.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            {
                'L3MON4D3/LuaSnip',
                dependencies = { "rafamadriz/friendly-snippets" },
            }, -- Required
        },

        use 'ThePrimeagen/vim-be-good'
    }
    use "rafamadriz/friendly-snippets"
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        'amirali/yapf.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('yapf').setup {
                style = 'google'
            }
        end,
    }
end)
