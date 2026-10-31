return {
  {
    "xiyaowong/transparent.nvim",
    opts = {},
  },

  -- 1. Tell LazyVim to load your new default colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight", -- Replace with your preferred theme name
    },
  },

  -- 2. Completely disable the default tokyonight plugin
  {
    "folke/tokyonight.nvim",
    enabled = true,
    ops = {
      transparent = true,
      styles = {
        sidebar = "transparent",
        floats = "transparent",
      },
    },
  },

  -- 3. Add your new colorscheme plugin package
  {
    "ellisonleao/gruvbox.nvim",
    enabled = false,
    lazy = false,
    opts = {
      transparent_mode = true,
    },
  },
}
