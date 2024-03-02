return {
  { "bluz71/vim-nightfly-guicolors", priority = 1000 },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      local options = {
        rgb_fn = true,
        hsl_fn = true,
        css_fn = true,
        names = true,
      }
      local colorizer = require("colorizer")
      colorizer.setup({ "*" }, options)
    end,
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  { "EdenEast/nightfox.nvim", priority = 1000 },
  { "tomasr/molokai", priority = 1000 },
  { "nanotech/jellybeans.vim", priority = 1000 },
}
