return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "tsserver",
        "html",
        "lua_ls",
        "cssls",
        "tailwindcss",
        "svelte",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright",
        "clangd",
        "sqlls",
        "terraformls",
      },
      automatic_installation = true,
    })
  end,
}
