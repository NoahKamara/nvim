-- local plugin = require("commit-nvim-config.nvim-commit-config")

local Main = {};


local state = {
  debug = true
}

local plugin = "commit-cfg"

local function alert(event, msg)
  local notify = require("nvim-notify")

  msg = tostring(msg)
  -- local info = debug.getinfo(2, "Sl")
  -- local line_info = "[nvim-cfg-commit:" .. info.currentline .. "]"

  -- local timestamp = ("%s %-15s"):format(os.date("%H:%M:%S"), line_info)
  local event_msg = ("%-10s %s"):format(event, msg)
  notify(event_msg)
end


Main.config = {
  dir = "~/.config/nvim"
}

local function current_cfg_path()
  local bufnr = vim.fn.bufnr()                       -- Get the buffer number of the current buffer
  local abs_path = vim.fn.bufname(bufnr)             -- get filepath

  local target_path = vim.fn.expand(Main.config.dir) -- expand config dir

  -- check if file is in nvim config path
  if not string.find(abs_path, "^" .. target_path) then
    return nil
  end

  local relative_path = vim.fn.fnamemodify(abs_path, Main.config.dir):sub(#target_path + 2)
  return relative_path
end

local function onBufferWrite()
  local path = current_cfg_path()

  if path == nil then
    return
  end

  local name = vim.fn.fnamemodify(path, ":t")

  local status = "modify"
  -- local file_name = vim.fn.fnamemodify(path, ":t")

  -- Check if the buffer is new (not yet saved)
  if vim.fn.empty(vim.fn.expand('%:t')) > 0 then
    status = "add"
  end

  local title = string.format("%s: %s", plugin, status, name)
  local message = string.format("%s: %s", status, path)

  -- Notify the user
  --
  local notification;

  notification = vim.notify(message, nil, {
    title = title,
    notification = notification
  })

  local addRes = vim.fn.system(string.format("git add %s/%s", Main.config.dir, path))
  vim.notify(addRes)

  local commit = vim.fn.system(string.format('git commit -m "%s"', message))
  vim.notify(commit)
end

local Log = {
  debug = function(msg)
    vim.notify(msg, vim.log.levels.INFO, { title = "commit-cfg" })
  end,
  error = function(msg)
    vim.notify(msg, vim.log.levels.ERROR, { title = "commit-cfg" })
  end,
  warn = function(msg)
    vim.notify(msg, vim.log.levels.WARN, { title = "commit-cfg" })
  end,
  info = function(msg)
    vim.notify(msg, vim.log.levels.INFO, { title = "commit-cfg" })
  end
}

-- SETUP
Main.setup = function()
  local api = vim.api
  local group = api.nvim_create_augroup('commit-cfg', { clear = true })

  vim.wait(10);
  print("HELLO WORLD")

  api.nvim_create_autocmd({ 'BufWritePost' }, {
    group = group,
    pattern = '*',
    callback = function() onBufferWrite() end
  })
end

-- INIT
Main.init = function()
  print("HELLO");
end



return Main;
