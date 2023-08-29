return {
  "startup-nvim/startup.nvim",
  dependencies = {
    -- "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require('startup').setup({
      theme = "dashboard",
      example = {
        align = "center",     -- "center", "left" or "right"
        fold_section = false, -- whether to fold or not
        title = "title",      -- title for the folded section
        margin = 5,           -- the margin for left or right alignment
        content = function()
          local clock = " " .. os.date "%H:%M"
          local date = " " .. os.date "%d-%m-%y"
          return { clock, date }
        end
      },
      parts = { "example" }
    })
  end
}
