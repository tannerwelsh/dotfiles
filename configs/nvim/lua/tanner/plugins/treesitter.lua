-- Better syntax highlighting, indentation, autotagging, selection, and more

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag", -- auto-closing functionality for tags
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({ -- enable syntax highlighting
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "vimdoc",
        "ruby",
        "python",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "vn", -- select a node
          scope_incremental = false,
          node_incremental = "vn",
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
