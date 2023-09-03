-- Watch file and execute on change
local Throttler = {}

local running = false

table.serialize = function(val, name, skipnewlines, depth)
  skipnewlines = skipnewlines or false
  depth = depth or 0

  local tmp = string.rep(" ", depth)

  if name then tmp = tmp .. name .. " = " end

  if type(val) == "table" then
    tmp = tmp .. "{" .. (not skipnewlines and "\n" or "")

    for k, v in pairs(val) do
      tmp = tmp .. table.serialize(v, k, skipnewlines, depth + 1) .. "," .. (not skipnewlines and "\n" or "")
    end

    tmp = tmp .. string.rep(" ", depth) .. "}"
  elseif type(val) == "number" then
    tmp = tmp .. tostring(val)
  elseif type(val) == "string" then
    tmp = tmp .. string.format("%q", val)
  elseif type(val) == "boolean" then
    tmp = tmp .. (val and "true" or "false")
  else
    tmp = tmp .. "\"[inserializeable datatype:" .. type(val) .. "]\""
  end

  return tmp
end



local function register_callback(cmd)
  vim.notify(table.serialize(cmd))
  local filepath = vim.fn.expand("%")

  -- Clear old
  local group = vim.api.nvim_create_augroup("Watch", { clear = true })


  vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
    callback = function()
      vim.fn.system(cmd.args)
    end
  })
  vim.notify("register callback for ")
end

return {
  'rktjmp/fwatch.nvim',
  config = function()
    local fw = require('fwatch')

    vim.api.nvim_create_autocmd("BufEnter", {
      callback = function()
        vim.api.nvim_create_user_command("Watch", register_callback, { nargs = "*" })
      end
    })
  end
}
