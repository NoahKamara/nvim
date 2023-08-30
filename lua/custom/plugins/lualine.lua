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

    -- Icon & Icon Color
    local devicons = require('nvim-web-devicons')
    local function file_icon()
      local icon = devicons.get_icon("filename", "lua", { default = true })
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
        lualine_x = { { file_icon, separator = "", padding = { left = 1, right = 0 } }, 'filetype' },
        lualine_y = {},
        lualine_z = { 'filename', 'location' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = { 'filename' },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
    })
  end
}
