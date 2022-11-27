local setup, treesitter = pcall(require, 'nvim-treesitter.configs')
if not setup then
    print('TREESITTER error')
    return
end

treesitter.setup({
    highlight = { enable = true, },
})


