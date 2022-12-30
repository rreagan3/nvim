require("nvim-treesitter.configs").setup({
  context_commentstring = { enable = true, },
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = {}, -- List of parsers to ignore installing
  auto_install = true,
  highlight = { enable = true, },
  additional_vim_regex_highlighting = false,
  autotag = { enable = true },
  indent = { enable = true, },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<leader><Space>',
      node_incremental = '<leader><Space>',
      scope_incremental = '<leader>;',
      node_decremental = '<leader><BS>',
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['aa'] = '@parameter.outer',
        ['ia'] = '@parameter.inner',
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer',
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer',
      },
    },
  },
})

-- FIX: for nvim-autotag - not actually working
local ts_utils = require("nvim-treesitter.ts_utils")
ts_utils.get_node_text = vim.treesitter.query.get_node_text

-- Detect astro files and set filetype
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.astro" },
  callback = function()
    vim.cmd([[ set filetype=astro ]])
  end,
})
