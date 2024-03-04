local function attach(opts)
  vim.keymap.set( "n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set( "n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  -- Trouble currently replaces these
  -- vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  -- vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.reference() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end


local handlers = {
  function (server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup({})
  end,
  ["rust_analyzer"] = function ()
    require("rust-tools").setup({})
  end,
  ["lua_ls"] = function ()
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
  end,
}

-- alt 1. Either pass handlers when setting up mason-lspconfig:
-- require("mason-lspconfig").setup({ handlers = handlers })

-- alt 2. or call the .setup_handlers() function.
-- require("mason-lspconfig").setup_handlers(handlers)


return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "simrat39/rust-tools.nvim",
      "windwp/nvim-autopairs",
    },
    lazy = false,
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "typos_lsp",
          "clangd",
          "neocmake",
          "cssls",
          "bashls",
          "eslint",
          "html",
          "tsserver",
          "lua_ls",
          "pyright",
          "sqlls",
          "vimls",
        },
        handlers = handlers,
      })
      local lspconfig = require("lspconfig")
      local cmp = require('cmp')
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp_select = { behavior = cmp.SelectBehavior.Select }
      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
          ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
          ["<C-y>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources(
        {
          { name = "nvim_lsp" },
          { name = "luasnip" },
        },
        {
          { name = "buffer" },
        }
        ),
      })
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end,
  },
}
