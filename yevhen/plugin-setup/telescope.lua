---------------
-- TELESCOPE --
---------------
local t_setup, telescope = pcall(require, 'telescope')
local a_setup, actions = pcall(require, 'telescope.actions') 
if not t_setup or not a_setup then
    return
end

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ['<C-k>'] = actions.move_selection_previous,
                ['<C-j>'] = actions.move_selection_next,
                ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
            }
        }
    }
})
telescope.load_extension('fzf')
