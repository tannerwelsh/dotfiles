-- Show keymaps in window
-- To reveal: type leader and wait 1/2 sec

return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- load this later, not important for initial UI
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500 -- ms
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
