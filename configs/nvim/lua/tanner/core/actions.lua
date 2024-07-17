-- SUBSTITUTIONS --
-- :%s/[“”]/"/g
local function fix_quotes()
  local save = vim.fn.winsaveview()
  vim.cmd('keeppatterns %s/[“”]/"/g')
  vim.cmd("keeppatterns %s/[‘’]/'/g")
  vim.fn.winrestview(save)
end
-- Create a command to replace quotes
vim.api.nvim_create_user_command("FixQuotes", fix_quotes, {})

-- FORMATTING --

-- Function to trim trailing whitespace
local function trim_whitespace()
  local save = vim.fn.winsaveview()
  vim.cmd("keeppatterns %s/\\s\\+$//e")
  vim.fn.winrestview(save)
end

-- Create a command to trim whitespace
vim.api.nvim_create_user_command("TrimWS", trim_whitespace, {})
