-- Markdown
vim.api.nvim_create_augroup("MarkdownWrap", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- always wrap by default
    vim.opt_local.wrap = true
  end,
  group = "MarkdownWrap",
})
