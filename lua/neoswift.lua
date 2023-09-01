local group = vim.api.nvim_create_augroup("nvim-swift", {})



local function open_package()
  vim.notify("Opened Swift Package")

  local path = vim.fn.expand('%:h') .. '/'
  path = "cd " .. path
  vim.api.nvim_command(path)
end




return {
  setup = function()
    vim.api.nvim_create_autocmd("BufWritePost", {
      group = group,
      callback = function()
        open_package()
      end,
      pattern = "Package.swift"
    })
  end
}
