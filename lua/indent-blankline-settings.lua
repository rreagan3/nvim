vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#c9a7aa gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#e8c8a7 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#d3d4a1 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#a7bf95 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#9dbfc2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#88a0b3 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent7 guifg=#9fa6cc gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent8 guifg=#b2a1c9 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent9 guifg=#cfa5c9 gui=nocombine]]

-- vim.opt.list = true
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
    "IndentBlanklineIndent4",
    "IndentBlanklineIndent5",
    "IndentBlanklineIndent6",
    "IndentBlanklineIndent7",
    "IndentBlanklineIndent8",
    "IndentBlanklineIndent9",
  },
}
