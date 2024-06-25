-- Lazy.nvim Setup
-- https://github.com/folke/lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load local plugins
require("lazy").setup("tanner.plugins", {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false, -- don't always notify when plugins change
  },
})
