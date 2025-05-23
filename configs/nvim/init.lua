require("tanner.core")
require("tanner.lazy")

-- THEME
vim.cmd.colorscheme("rose-pine")

-- AI ASSIST
-- Sourcegraph configuration. All keys are optional
require("sg").setup({
  -- Pass your own custom attach function
  --    If you do not pass your own attach function, then the following maps are provide:
  --        - gd -> goto definition
  --        - gr -> goto references
  -- on_attach = your_custom_lsp_attach_function
})
