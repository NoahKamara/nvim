-- return {
--   "ray-x/lsp_signature.nvim",
--   event = "VeryLazy",
--   opts = {
--     toggle_key = "<D-k>",
--     always_trigger = true,
--     floating_window = true
--   },
--   config = function(_, opts)
--     local plugin = require('lsp_signature')
--
--     vim.keymap.set("n", )
--     plugin.setup(opts)
--
--     vim.keymap.set({ 'n', 'i' }, '<C-k>', function()
--       require('lsp_signature').toggle_float_win()
--     end, { silent = true, noremap = true, desc = 'toggle signature' })
--   end
-- }


return {
  "hrsh7th/cmp-nvim-lsp-signature-help",
  config = function()
    -- vim.keymap.set()
    --
    --

    require("which-key").register({
      ["<C-s>"] = { function() print("bar") end, "Signature Help" }
    }, {
      mode = "i"
    })


    vim.keymap.set('i', '<c-s>', function() vim.lsp.buf.signature_help() end, { buffer = true })

    require('cmp').setup {
      sources = {
        { name = 'nvim_lsp_signature_help' }
      }
    }
  end
}
