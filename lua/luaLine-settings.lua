--lualine settings
-- local git_blame = require('git_blame')

require("lualine").setup({
  options = {
    icons_enabled = true,
    components_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {},
    globalstatus = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch" },
    lualine_c = { { "filename", file_status = true, path = 1 } },
    -- lualine_d = {
    --   {
    --     git_blame.get_current_blame_text,
    --     cond = git_blame.is_blame_text_available
    --   }
    -- },
    -- lualine_x = {"encoding", "fileformat", "filetype"},
    lualine_x = { "encoding", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = { "fugitive", "nvim-tree" },
})
