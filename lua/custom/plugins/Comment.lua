-- "gc" to comment visual regions/lines

return {
  'numToStr/Comment.nvim',
  opts = {},
  config = function()
    require("Comment").setup()

    local wk = require("which-key")


    wk.register({
      title = "Comment",
      ["bc"] = "[B]lock Comment",
      ["cc"] = "Line [C]omment"
    }, { prefix = "c" })
  end
}
