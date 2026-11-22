return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
    keys = {
        { '<leader>ff', '<cmd>Telescope find_files<CR>', desc = 'Find files' },
        { '<leader>fg', '<cmd>Telescope live_grep<CR>', desc = 'Search text' },
        { '<leader>fb', '<cmd>Telescope buffers<CR>', desc = 'Find buffers' },
        { '<leader>fh', '<cmd>Telescope help_tags<CR>', desc = 'Help tags' },
    },
    config = function() require('telescope').setup {} end,
}
