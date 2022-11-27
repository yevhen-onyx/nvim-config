local cmp_setup, cmp = pcall(require, 'cmp')
if ( not cmp_setup) then 
    print('CMP fails')
    return
end

vim.opt.completeopt = 'menu,menuone,noselect'

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(), -- show suggestions
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },  -- lsp
        { name = 'buffer' },    -- within current buffer 
        { name = 'path' },      -- file system paths
    }),
})
