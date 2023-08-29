-- Useful plugin to show you pending keybinds.

return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")

    wk.register({
      ["ß"] = { "Cheatsheet" }
    }, { prefix = "<cmd>" })
    -- vim.keymap.set('i', '<C-ß>', require("which-key").show_command('', 'i'))
    -- vim.keymap.set('n', '<C-ß>', vim.print('hello world'))
    vim.keymap.set({ 'i', 'n' }, '<C-ß>', function()
      require("which-key").show_command('', vim.api.nvim_get_mode()["mode"])
    end)
  end,
}
