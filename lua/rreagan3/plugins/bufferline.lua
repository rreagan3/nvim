return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
      offsets = {
        {
          filetype = "NvimTree",
          highlight = "Directory",
          text_align = "left",
        },
      },
      diagnostics = "nvim_lsp",
      max_name_length = 22,
      tab_size = 22,
    },
  },
}
