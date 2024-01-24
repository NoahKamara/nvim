return {
  "xbase-lab/xbase",
  run = "make install",
  requires = {
    "neovim/nvim-lspconfig"
  },
  config = function()
    require("xbase").setup({
      sourcekit = {},
    })
  end
}
