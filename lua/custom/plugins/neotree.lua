-- File Sidebar



-- configs - used when a file with a ext matching a key is opened, will search for the parentfolder containing one of the specified filenames
local parent_config = {
  ["swift"] = { "Package.swift", ".git" },
}

local function open_project_dir()
  -- Find Parent based on a cfg
  local function find_parent(path, cfg)
    local currentPath = path:match("(.+)/[^/]+$")

    repeat
      for i, file in pairs(cfg) do
        if vim.fn.filereadable(currentPath .. file) then
          return currentPath
        end
      end
      currentPath = currentPath:match("(.+)/[^/]+$")
    until not currentPath
  end


  local filepath = vim.fn.expand("%:p")
  local ext = vim.fn.expand("%:e")
  local cfg = parent_config[ext]


  if cfg then
    local parent = find_parent(filepath, cfg)
    if parent then
      vim.notify(string.format("Dir: %s\nFile: %s", parent, filepath), nil, { title = "Open Project", timeout = 500 })
      vim.cmd(":Neotree show dir=" .. parent)
      return
    end
  end
  local cwd = vim.fn.getcwd()

  -- If CWD is parent of file just reveal file
  -- if filepath:find(cwd, 1, true) == 1 then
  --   vim.cmd(":Neotree show reveal_file=%")
  --   return
  -- end
  --
  -- -- CWD is not parent of file, set new cwd
  -- local dir
  --
  -- if not vim.fn.isdirectory(dir) then
  --   dir = filepath
  -- else
  --   dir = vim.fn.expand("%:p:r")
  -- end
  --
  --
  -- vim.notify(string.format("Dir: %s\nFile: %s", dir, filepath), nil, { title = "Open Project", timeout = 500 })
  -- vim.cmd(":Neotree show dir=" .. dir)
end


return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local neotree = require('neo-tree')

    -- Setup
    neotree.setup({
      close_if_last_window = true, -- close if neotree is last window left in tabs
      window = {
        width = 30,
      }
    })

    -- Toggle Sidebar Command
    vim.keymap.set('n', '<C-S-space>', '<Cmd>Neotree toggle<CR>')

    -- Switch to parent dir of current file if file not child of cwd
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        open_project_dir()
      end
    })

    require('nvim-web-devicons').setup {
      -- your personnal icons can go here (to override)
      -- you can specify color or cterm_color instead of specifying both of them
      -- DevIcon will be appended to `name`
      override = {
        zsh = {
          icon = "",
          color = "#FC8025",
          cterm_color = "65",
          name = "Zsh"
        }
      },
      follow_current_line = true,
      -- globally enable different highlight colors per icon (default to true)
      -- if set to false all icons will have the default icon's color
      color_icons = true,
      -- globally enable default icons (default to false)
      -- will get overriden by `get_icons` option
      default = true,
      -- globally enable "strict" selection of icons - icon will be looked up in
      -- different tables, first by filename, and if not found by extension; this
      -- prevents cases when file doesn't have any extension but still gets some icon
      -- because its name happened to match some extension (default to false)
      strict = true,
      -- same as `override` but specifically for overrides by filename
      -- takes effect when `strict` is true
      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = "#f1502f",
          name = "Gitignore"
        }
      },
      -- same as `override` but specifically for overrides by extension
      -- takes effect when `strict` is true
      override_by_extension = {
        ["log"] = {
          icon = "",
          color = "#81e043",
          name = "Log"
        },
        ["swift"] = {
          icon = "􀫊 ",
          color = "#81e043",
          name = "Swift"
        }
      },

      source_selector = {
        winbar = true,
        statusline = true,
        sources = { -- table
          {
            source = "filesystem", -- string
            display_name = " 󰉓 Files " -- string | nil
          },
          {
            source = "buffers", -- string
            display_name = " 󰈚 Buffers " -- string | nil
          },
          {
            source = "git_status", -- string
            display_name = " 󰊢 Git " -- string | nil
          },
        },
      }
    }
  end,
}
