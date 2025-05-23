-- Manage colorschemes

return {
  { "rose-pine/neovim", name = "rose-pine", priority = 1000 },
  { "catppuccin/nvim", name = "catppuccin", priority = 0 },
  {
    "folke/tokyonight.nvim",
    priority = 0, -- make sure to load this before all the other start plugins
    config = function()
      require("tokyonight").setup({
        -- options: night, storm, moon, day
        style = "night",
      })

      -- load the colorscheme here
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
