local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- local TAB = 2
-- vim.g.mapleader = "\\"
-- vim.g.softtabstop = TAB
-- vim.g.shiftwidth = TAB

require("options")

require("lazy").setup("plugins")

vim.cmd([[


colorscheme rose-pine

]])

-- vim.cmd([[ source lua/rreagan3/vimscripts/floatterm.vim ]])
