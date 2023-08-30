-- "gc" to comment visual regions/lines

return {
  'numToStr/Comment.nvim',
  opts = {},
  config = function()
    require("Comment").setup()

    local wk = require("which-key")

    wk.setup({})
    wk.register({
      name = "Comment * Line Block",
      ["cc"] = "Line Comment",
      ["bc"] = "Block Comment"
    }, { prefix = "g" })
  end
}
