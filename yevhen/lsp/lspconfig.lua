local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if ( not lspconfig_status ) then
    print('LSPCONFIG fails')
    return
end

-- buffer independent
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)


-- enable keybinds for available lsp servers
local on_attach = function(client, bufnr)
    local bopts = { noremap = true, silent = true, buffer = bufnr }
    -- set keybinds
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bopts)
    vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, bopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bopts)
    vim.keymap.set('n', '<leader>dr', vim.lsp.buf.rename, bopts)
    vim.keymap.set('n', '<leader>df', vim.lsp.buf.formatting, bopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}

-- used to enable autocompletion
lspconfig['pyright'].setup({ on_attach = on_attach, flags = lsp_flags })
lspconfig['clangd'].setup({ on_attach = on_attach, flags = lsp_flags })
lspconfig['cmake'].setup({ on_attch = on_attach, flags = lsp_flags })

-- local servers = { 'pyright', 'clangd', 'bashls', 'cmake', 'json', 'dockerls' }
-- for _, lsp in ipairs(servers) do
--     lspconfig[lsp].setup({ on_attach = onattach, flags = lsp_flags })
-- end



