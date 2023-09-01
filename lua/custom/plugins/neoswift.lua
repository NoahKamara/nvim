return {
  dir = "~/Developer/nvim-swift",
  dependencies = { "MunifTanjim/nui.nvim" },
  config = function()
    require("nui.line")
    require("nvim-swift").setup()
  end,
  dev = true
}
