return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup(
      {
        options = {
          separator_style = "slope",
          -- diagnostics = "nvim_lsp",

          offsets = {
            {
              filetype = "neo-tree",
              text = "Files",
              highlight = "Directory",
              text_align = "left"
            }
          }
        }
      }
    )
  end
}
