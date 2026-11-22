return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local custom_auto = require("lualine.themes.auto")
    local modes = { "normal", "insert", "visual", "replace", "command", "inactive", "terminal" }

    for _, mode in ipairs(modes) do
      if custom_auto[mode] and custom_auto[mode].c then
        custom_auto[mode].c.bg = "NONE"
      end
    end

    require("lualine").setup({
      options = {
        theme = custom_auto,
      },
    })
  end,
}
