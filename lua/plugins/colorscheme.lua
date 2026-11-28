return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('tokyonight').setup {
                transparent = true,
                styles = {
                    sidebars = 'transparent',
                    floats = 'transparent',
                    comments = { italic = false },
                    keywords = { italic = false },
                    functions = { italic = false },
                    variables = { italic = false },
                },
            }
            vim.cmd.colorscheme 'tokyonight-night'
        end,
    },

    {
        'xiyaowong/transparent.nvim',
        lazy = false,
        config = function()
            require('transparent').setup()
            require('transparent').clear_prefix 'lualine_c'
            require('transparent').clear_prefix 'lualine_x'
        end,
    },
}
