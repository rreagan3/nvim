return require("packer").startup({
  function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Tmux navigator
    use("christoomey/vim-tmux-navigator")

    -- lsp
    use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
    }
    use({
      'ray-x/navigator.lua',
      requires = {
        { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
        { 'neovim/nvim-lspconfig' },
      },
      config = function()
        require("navigator").setup()
      end
    })

    -- Telescope
    use({
      "nvim-telescope/telescope.nvim",
      requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
    })

    -- Treesitter
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", })

    -- LuaLine
    use({
      "hoob3rt/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    -- Autocomplete
    use({
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-cmdline", -- command line
        "hrsh7th/cmp-buffer", -- buffer completions
        "hrsh7th/cmp-nvim-lua", -- nvim config completions
        "hrsh7th/cmp-nvim-lsp", -- lsp completions
        "hrsh7th/cmp-path", -- file path completions
        "saadparwaiz1/cmp_luasnip", -- snippets completions
      },
    })

    -- snippets
    use({
      "L3MON4D3/LuaSnip",
      requires = {
        "rafamadriz/friendly-snippets",
      },
    })

    -- floatterm
    use("voldikss/vim-floaterm")

    -- tpope
    use("tpope/vim-fugitive")
    use("tpope/vim-surround")
    use("tpope/vim-dispatch")
    use("tpope/vim-eunuch")
    use("tpope/vim-unimpaired")

    -- jessarcher
    use("jessarcher/vim-heritage")


    -- commenting
    use("JoosepAlviste/nvim-ts-context-commentstring")
    use({ "numToStr/Comment.nvim", tag = "v0.6" })

    -- windwp
    use("windwp/nvim-ts-autotag") -- auto close and rename tags
    use("windwp/nvim-autopairs")
    use("windwp/nvim-spectre") -- Spectre for find and replace

    -- Formatting
    use("mhartington/formatter.nvim")

    use("airblade/vim-gitgutter")

    -- hightlight matching tag in html,jsx etc.
    use("leafOfTree/vim-matchtag")

    use({
      "phaazon/hop.nvim",
      as = "hop",
      config = function()
        require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
      end,
    })

    -- Undotree
    use("mbbill/undotree")

    -- file tree
    use("kyazdani42/nvim-tree.lua")

    -- icons
    use("kyazdani42/nvim-web-devicons")

    -- icons in completion
    use("onsails/lspkind-nvim")

    -- Folke plugins
    -- Themes
    use("folke/tokyonight.nvim")
    use("EdenEast/nightfox.nvim")
    use("tomasr/molokai")
    use("nanotech/jellybeans.vim")

    -- Trouble
    use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup({})
      end,
    })

    -- WhichKey
    use("folke/which-key.nvim")

    -- Todo comments
    use({
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
      config = function()
        require("todo-comments").setup({})
      end,
    })

    -- Colorizer
    use("norcalli/nvim-colorizer.lua")

    -- jsonc file type for json - comments in json
    use("kevinoid/vim-jsonc")

    -- bufferline for buffers in 'tabs'
    use({ "akinsho/bufferline.nvim", tag = "*", requires = "kyazdani42/nvim-web-devicons" })

    -- better code action menu
    use({
      "weilbith/nvim-code-action-menu",
      cmd = "CodeActionMenu",
    })

    -- firebase rules
    use("delphinus/vim-firestore")

    -- sessions
    use({
      "rmagatti/auto-session",
      config = function()
        require("auto-session").setup({
          log_level = "error",
          auto_session_suppress_dirs = { "~/", "~/Projects" },
        })
      end,
    })

    use({
      "rmagatti/session-lens",
      config = function()
        require("session-lens").setup({ --[[your custom config--]]
        })
      end,
    })

    -- Dashboard
    use("goolord/alpha-nvim")

    -- my old plugins
    use("ethanholz/nvim-lastplace") -- this is a rewrite of farmergreg/vim-lastplace
    use({
      "kevinhwang91/nvim-hlslens",
      config = function()
        require('hlslens').setup()

        local kopts = { noremap = true, silent = true }

        vim.api.nvim_set_keymap('n', 'n',
          [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
          kopts)
        vim.api.nvim_set_keymap('n', 'N',
          [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
          kopts)
        vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
        vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
        vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
        vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

        vim.api.nvim_set_keymap('n', '<Leader>l', ':noh<CR>', kopts)
      end
    })
    use("junegunn/vim-peekaboo")
    use({
      "ahmedkhalf/project.nvim",
      config = function()
        require("project_nvim").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    })
    use({
      "petertriho/nvim-scrollbar",
      config = function()
        require("scrollbar").setup()
      end
    })
    use({
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    })

    -- git blames?
    use('f-person/git-blame.nvim')

    use("wincent/terminus")
    use("roxma/vim-tmux-clipboard")
    use("alcesleo/vim-uppercase-sql")
    use({
      "frazrepo/vim-rainbow",
      vim.cmd([[
      syntax on
      let g:rainbow_active = 1
      ]])

    })

    -- use({
    --   "lukas-reineke/indent-blankline.nvim",
    --   config = function()
    --     require("indent-blankline").setup {
    --       -- for example, context is off by default, use this to turn it on
    --       show_current_context = true,
    --       show_current_context_start = true,
    --     }
    --   end
    -- })

  end,
})
