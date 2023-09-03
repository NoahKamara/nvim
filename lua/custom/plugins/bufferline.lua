return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup(
      {
        options = {
          always_show_bufferline = false,
          separator_style = "slant",
          diagnostics = "nvim_lsp",

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

    local wk = require("which-key")

    wk.register(
      {
        name = "BufferLine",
        p = { "<CMD>BufferLineTogglePin<cr>", "Toggle [P]in" },
        c = {
          name = "[C]ycle Buffer",
          h = { "<CMD>BufferLineCyclePrev<cr>", "[C]ycle Prev" },
          l = { "<CMD>BufferLineCycleNext<cr>", "[C]ycle Next" }
        },
        m = {
          name = "[M]ove Buffer",
          h = { "<CMD>BufferLineMovePrev<CR>", "[M]ove Previous" },
          l = { "<CMD>BufferLineMoveNext<CR>", "[M]ove Next" },
        },
        q = {
          name = "[C]lose Buffer",
          q = { "<CMD>BufferLineCloseOthers<CR>", "[C]lose Current" },
          h = { "<CMD>BufferLineCloseLeft<CR>", "[C]lose Left" },
          l = { "<CMD>BufferLineCloseRight<CR>", "[C]lose Right" },
        }
      }, {
        prefix = "<C-b>",
        mode = { "n", "i" }
      }
    )

    -- Define a keybinding that starts with a number followed by a key
    -- for i = 1, 9 do
    --    local mapping = string.format("%s<tab>", i)
    --     local command = string.format("BufferLineGoToBuffer %s", i)
    --
    --     local function goto()
    --       if vim.api.nvim_buf_is_valid(i) then
    --         vim.notify("VALID " .. command)
    --         vim.cmd(command)
    --       else
    --         vim.notify(string.format("Invalid Buffer %s", i))
    --       end
    --     end
    --
    --     vim.keymap.set('n', mapping, goto, { noremap = true, silent = true })
    -- end
  end
}
