-- require all language server modules
-- require("ls.astro")
-- require("ls.css")
-- require("ls.deno")
-- require("ls.emmet")
-- require("ls.eslint")
-- require("ls.go")
-- require("ls.gql")
-- require("ls.html")
-- require("ls.json")
-- require("ls.luals")
-- require("ls.prisma")
-- require("ls.python")
-- require("ls.rust")
-- require("ls.tailwind")
-- require("ls.typescript")
-- require("ls.vue")
-- require("ls.yaml")
-- require('ls.c')

require("mason-lspconfig").setup_handlers {
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end,
}

-- Customization and appearance -----------------------------------------
-- change gutter diagnostic symbols
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = {
    source = "if_many",
    prefix = " ", -- Could be '●', '▎', 'x'
  },
  float = {
    source = "always",
  },
  severity_sort = true,
})

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})
