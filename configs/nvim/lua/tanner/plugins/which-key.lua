-- Show keymaps in window
-- To reveal: type leader and wait 1/2 sec
-- https://github.com/folke/which-key.nvim

return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- load this later, not important for initial UI
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500 -- ms
  end,
  opts = {
    layout = {
      width = { min = 20, max = 60 }, -- min and max width of the columns
    },
    plugins = {
      marks = {
        enabled = false, -- disable b/c causes issues with remapped ' as <leader>
      },
    },
  },
}
