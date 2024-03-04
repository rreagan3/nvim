vim.opt.relativenumber = true
vim.opt.cursorline = true -- show the cursor line
vim.opt.cursorcolumn = false -- show the cursor column
vim.opt.mouse = "a" -- enable mouse
vim.opt.clipboard = "unnamedplus" -- use system clipboard
-- vim.opt.smartcase = true -- ignores case for search unless a capital is used in search
vim.opt.ic = true
local TAB=2
-- vim.opt.tabstop = TAB
vim.opt.softtabstop = TAB
vim.opt.shiftwidth = TAB
vim.opt.expandtab = true -- spaces instead of tabs
vim.opt.number = true
vim.opt.textwidth = 80
vim.opt.linebreak = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.cmdheight = 2
vim.opt.updatetime = 100
vim.opt.showmode = false
vim.opt.numberwidth = 5 -- wider gutter
vim.opt.linebreak = true -- don't break words on wrap
vim.opt.spelllang = "en_us"
vim.opt.smartindent = true
vim.opt.completeopt = "menuone,noselect" -- nvim-cmp
-- vim.opt.completeopt = {"menuone", "longest", "preview"}
vim.opt.signcolumn = "yes" -- always show the signcolumn
vim.opt.termguicolors = true

-- {{{ my options
-- my extras
vim.opt.listchars = "tab:[->,trail:⎵,extends:…,precedes:…,conceal:✮"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.confirm = true
vim.opt.colorcolumn = "+1"
vim.opt.whichwrap = "<,>,h,l,[,]"
vim.opt.backup = true
vim.opt.undofile = true
vim.opt.backupdir = "~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp"
vim.opt.backupskip = "/tmp/*,/private/tmp/*"
vim.opt.directory = "~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp"
vim.opt.writebackup = true
-- }}}

-- spelling
vim.opt.spelllang = "en_us"
vim.opt.mousemodel = "popup"
-- timeout for whichkey
vim.opt.timeoutlen = 500

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

vim.g.mapleader = "\\"

-- highlight on yank
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])

-- Vertically center document when entering insert mode
-- vim.cmd([[autocmd InsertEnter * norm zz]])

-- Give me some fenced codeblock goodness
vim.g.markdown_fenced_languages = {
  "html",
  "javascript",
  "javascriptreact",
  "typescript",
  "json",
  "css",
  "scss",
  "lua",
  "vim",
  "bash",
  "ts=typescript",
}
