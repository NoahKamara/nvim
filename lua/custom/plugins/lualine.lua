-- status line

-- TODO:
-- * color file type & icon using devicons

return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local line = require("lualine")

    -- Theme
    local theme = require("lualine.themes.onedark")

    -- Filetype Icon Color
    local devicons = require('nvim-web-devicons')

    local function file_icon()
      local name = vim.fn.expand("%:t")
      local ext = vim.fn.expand("%:e")

      local icon = devicons.get_icon(name, ext, { default = true })
      return icon
    end

    -- Line Setup
    line.setup({
      options = {
        icons_enabled = false,
        theme = theme,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          { 'branch', icons_enabled = true, icon = "" },
          'diagnostics'
        },
        lualine_c = { 'filename' },
        lualine_x = { 'searchcount' },
        lualine_y = { 'filename' },
        lualine_z = { { 'filetype', separator = "", padding = { left = 1, right = 0 } }, file_icon,
          'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
    })
  end
}
