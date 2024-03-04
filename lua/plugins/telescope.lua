return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>ff",
      function() require("telescope.builtin").find_files() end,
      desc = "[Telescope] Find Files",
    },
    {
      "<leader>fg",
      function() require("telescope.builtin").live_grep() end,
      desc = "[Telescope] Live Grep",
    },
    {
      "<leader>fb",
      function() require("telescope.builtin").buffers() end,
      desc = "[Telescope] Find Buffers",
    },
    {
      "<leader>fh",
      function() require("telescope.builtin").help_tags() end,
      desc = "[Telescope] Find Buffers",
    }


  },
}

