return {
  "folke/trouble.nvim",
  keys = {
    n = {
      { "<leader>tt", function() require("trouble").toggle() end },
      { "]d", function() require("trouble").next({skip_groups = true, jump = true}) end },
      { "[d", function() require("trouble").previous({skip_groups = true, jump = true}) end },
    },
  },
  config = function()
    require("trouble").setup({
      icons = false,
    })
  end
}
