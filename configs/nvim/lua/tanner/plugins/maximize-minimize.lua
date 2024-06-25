-- Maximize/minimize splits

return {
  "szw/vim-maximizer",
  keys = {
    -- Only loaded when key used the first time
    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
  },
}
