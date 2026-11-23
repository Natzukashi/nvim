return {

    {
        'xiyaowong/transparent.nvim',
        lazy = false,
        config = function()
            require('transparent').setup()
            require('transparent').clear_prefix 'lualine_c'
            require('transparent').clear_prefix 'lualine_x'
        end,
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                theme = 'auto',
                component_separators = '│',
                section_separators = '',
            },
            sections = {
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_z = {
                    function() return ' ' .. os.date '%H:%M' end,
                },
            },
        },
    },

    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
        opts = {
            fast_wrap = {},
        },
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },

    {
        'rcarriga/nvim-notify',
        config = function()
            vim.notify = require 'notify'

            require('notify').setup {
                timeout = 3000,
                stages = 'fade',
                render = 'compact',
                top_down = true,
            }
        end,
    },
}
