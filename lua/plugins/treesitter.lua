return {
  "nvim-treesitter/nvim-treesitter",

  build = "<cmd>TSUpdate<cr>",

  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        "c",
        "cmake",
        "cpp",
        "css",
        "diff",
        "html",
        "javascript",
        "jq",
        "json",
        "lua",
        "make",
        "query",
        "rust",
        "typescript",
        "vimdoc",
        "yaml"
      },
      auto_install = true,

      -- indent = {
        -- 	enable = true
        -- },

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = { "markdown" },
        },
      })
    end
  }
