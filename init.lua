-- basic settings and options
require("options")

-- install packer
require("install-packer")

-- load all the plugins
require("load-plugins")

-- set up language servers
-- require("nvim-lsp-installer").setup {}
require("mason").setup {}
require("mason-lspconfig").setup {}
require("ls")

-- set up treesitter
require("treesitter-settings")

-- configure plugins
require("Comment-settings")
require("autopairs-settings")
require("bufferline-settings")
require("cmp-settings")
require("colorizer-settings")
require("dashboard-settings")
require("floatterm-settings")
require("formatter-settings")
require("lastplace-settings")
require("lspkind-settings")
require("luaLine-settings")
require("matchtag-settings")
require("nvim-tree-settings")
require("spectre-settings")
require("telescope-settings")
require("theme-settings")
require("undo-tree-settings")
require("whichkey-settings")

-- keymappings
require("keymappings")
