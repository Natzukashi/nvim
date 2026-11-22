return {
    {
        "j-hui/fidget.nvim",
        opts = {},
    },

    {
        "xiyaowong/transparent.nvim",
        lazy = false,
        config = function()
            require("transparent").setup()
            require("transparent").clear_prefix("lualine_c")
            require("transparent").clear_prefix("lualine_x")
        end,
    },


    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            options = {
                theme = "auto",
                component_separators = "│",
                section_separators = "",
            },
            sections = {
                lualine_z = {
                    function()
                        return " " .. os.date("%H:%M")
                    end,
                },
            },
        },
    },


}

