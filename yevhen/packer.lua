-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- Color theme
    use('Mofiqul/dracula.nvim')
    use('folke/tokyonight.nvim')
    use('EdenEast/nightfox.nvim')

    -- Nvim library 
    use('nvim-lua/plenary.nvim')

    -- Icon render
    use('kyazdani42/nvim-web-devicons')

    -- File explorer
    use({
        'nvim-tree/nvim-tree.lua',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        tag = 'nightly' 
    })

    -- Status line
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    })

    -- Fuzzy finder
    use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
    use({ 
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { {'nvim--lua/plenary.nvim'} }
    })

    -- Lsp support
    use('neovim/nvim-lspconfig')

    -- Treesitter
    use({
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    })

    -- Autocompletion
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    -- use('hrsh7th/cmp-path')

end)

