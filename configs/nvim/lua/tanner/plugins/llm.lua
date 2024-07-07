-- ollama powered llm integration
-- https://github.com/David-Kunz/gen.nvim

return {
  "David-Kunz/gen.nvim",
  config = function()
    local gen = require("gen")

    gen.setup({
      model = "llama2",
      display_mode = "split",
      show_prompt = true,
      show_model = true,
      -- debug = true,
    })

    local keymap = vim.keymap

    keymap.set({ "n", "v" }, "<leader>]", ":Gen<CR>", { desc = "Send prompt to LLM with Gen" })
  end,
}
