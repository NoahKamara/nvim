-- darkens inactive window

return {
  "sunjon/shade.nvim",
  config = function()
    require('shade').setup({
      overlay_opacity = 30
    })
  end
}
