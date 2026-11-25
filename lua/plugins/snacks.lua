return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
    keys = {
      { "<leader><space>", false }, -- remove the default
      { "<leader>e", false },
      { "<leader>E", false },
      {
        "<leader>ff",
        function()
          Snacks.picker.files()
        end,
        desc = "Find Files",
      }, -- optional replacement
    },
  },
}
