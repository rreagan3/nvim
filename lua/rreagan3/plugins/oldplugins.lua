return {
  { "ethanholz/nvim-lastplace" },
  { "sitiom/nvim-numbertoggle" },
  { "f-person/git-blame.nvim" },
  { "airblade/vim-gitgutter" },
  { "junegunn/vim-peekaboo" },
  {
    "ahmedkhalf/project.nvim",
    config = function() -- lua
      local nvim_tree = require("nvim-tree")
      nvim_tree.setup({
        sync_root_with_cwd = true,
        respect_buf_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = true,
        },
      })
    end,
  },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      local sb = require("scrollbar")
      sb.setup()
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
      require("scrollbar.handlers.gitsigns").setup()
    end,
  },
}
