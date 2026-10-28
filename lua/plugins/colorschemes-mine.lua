return {
  {
    "xiyaowong/transparent.nvim",
    opts = {},
  },

  -- 1. Tell LazyVim to load your new default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox", -- Replace with your preferred theme name
    },
  },

  -- 2. Completely disable the default tokyonight plugin
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },

  -- 3. Add your new colorscheme plugin package
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000, -- High priority ensures it loads immediately on startup
    opts = {
      transparent_mode = true,
    },
  },
}
