-- Better syntax highlighting, indentation, autotagging, selection, and more

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag", -- auto-closing functionality for tags
  },
  config = function()
    local ok, treesitter = pcall(require, "nvim-treesitter.configs")
    if not ok then
      vim.notify("nvim-treesitter not loaded yet", vim.log.levels.WARN)
      return
    end

    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        disable = function(lang, buf)
          if vim.fn.getfsize(buf) > 1024 * 1024 then
            return true
          end
          return false
        end,
      },
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
