return {
    {
        'goolord/alpha-nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
            'nvim-lua/plenary.nvim',
        },
        config = function()
            local alpha = require 'alpha'
            local dashboard = require 'alpha.themes.dashboard'

            dashboard.section.header.val = {
                '███▄▄▄▄      ▄████████  ▄██████▄   ▄█    █▄   ▄█    ▄▄▄▄███▄▄▄▄  ',
                '███▀▀▀██▄   ███    ███ ███    ███ ███    ███ ███  ▄██▀▀▀███▀▀▀██▄',
                '███   ███   ███    █▀  ███    ███ ███    ███ ███▌ ███   ███   ███',
                '███   ███  ▄███▄▄▄     ███    ███ ███    ███ ███▌ ███   ███   ███',
                '███   ███ ▀▀███▀▀▀     ███    ███ ███    ███ ███▌ ███   ███   ███',
                '███   ███   ███    █▄  ███    ███ ███    ███ ███  ███   ███   ███',
                '███   ███   ███    ███ ███    ███ ███    ███ ███  ███   ███   ███',
                ' ▀█   █▀    ██████████  ▀██████▀   ▀██████▀  █▀    ▀█   ███   █▀ ',
            }

            dashboard.section.buttons.val = {
                dashboard.button('f', '󰈞  Find files', '<cmd>Telescope find_files<CR>'),
                dashboard.button('r', '󰄉  Recent files', '<cmd>Telescope oldfiles<CR>'),
                dashboard.button('g', '󰊄  Live grep', '<cmd>Telescope live_grep<CR>'),
                dashboard.button('e', '󰙅  Explorer', '<cmd>Oil<CR>'),
                dashboard.button('q', '󰗼  Quit', '<cmd>qa<CR>'),
            }

            for _, button in ipairs(dashboard.section.buttons.val) do
                button.opts.position = 'center'
                button.opts.width = 50
                button.opts.align_shortcut = 'right'
                button.opts.hl_shortcut = 'Keyword'
            end

            alpha.setup(dashboard.config)
        end,
    },
}
