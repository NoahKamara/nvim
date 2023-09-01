-- Adds git related signs to the gutter, as well as utilities for managing changes


return {
  'lewis6991/gitsigns.nvim',
  opts = {
    -- See `:help gitsigns.txt`
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local gitsigns = require("gitsigns")

      require("which-key").register({
        name = "[G]it",
        s = { ':Git status<CR>', "[S]tatus" },
        c = { ':Git commit | startinsert<CR>', "[C]ommit" },
        a = {
          name = "[A]dd",
          a = { ':Git add --all<CR>', "[A]all" }
        },
        -- Git Signs (Hunks)
        h = {
          name = "[H]unks",
          p = { gitsigns.next_hunk, "Goto [P]revious Hunk" },
          n = { gitsigns.next_hunk, "Goto [N]ext Hunk" },
          v = { gitsigns.preview_hunk, "Pre[v]iew [H]unk" }

        }
      }, { prefix = "<leader>g", buffer = bufnr })

      -- vim.keymap.set('n', '<leader>gp', require('gitsigns').prev_hunk,
      --   { buffer = bufnr, desc = '[G]o to [P]revious Hunk' })
      -- vim.keymap.set('n', '<leader>gn', require('gitsigns').next_hunk, { buffer = bufnr, desc = '[G]o to [N]ext Hunk' })
      -- vim.keymap.set('n', '<leader>ph', require('gitsigns').preview_hunk, { buffer = bufnr, desc = '[P]review [H]unk' })
    end,
  }
}
