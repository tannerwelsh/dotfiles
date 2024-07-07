-- Zen mode
-- https://github.com/folke/zen-mode.nvim

return {
  "folke/zen-mode.nvim",
  opts = {},
  config = function()
    vim.keymap.set("n", "<leader>Z", "<cmd>ZenMode<CR>", { desc = "Toggle Zen mode" })
  end,
}
