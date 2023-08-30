return {
  dir = "~/.config/nvim/nvim-cfg-commit",
  dependencies = {
    "rcarriga/nvim-notify",
  },
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,

  config = false
}
