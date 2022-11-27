vim.g.mapleader = ' '

local keymap = vim.keymap


-- clean search highlights
keymap.set('n', '<leader>nh', ':nohl<CR>')

-- split window
keymap.set('n', '<leader>sv', '<C-w>v') -- vertical split
keymap.set('n', '<leader>sh', '<C-w>s') -- horizontal split
keymap.set('n', '<leader>se', '<C-w>=') -- equalize splits
keymap.set('n', '<leader>sx', '<:close<CR>') -- close current split


-- NVIM-TREE --
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>') -- Toggle the explorer pane


-- TELESCOPE --
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>')
keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>')
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
