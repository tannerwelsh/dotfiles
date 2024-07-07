vim.g.mapleader = "'"

local keymap = vim.keymap -- to enable direct access to keymap

-- WINDOW MGMT --

-- move between panes
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to pane below" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to pane above" })
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to pane left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to pane right" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- FORMATTING --

-- Function to trim trailing whitespace
local function trim_whitespace()
  local save = vim.fn.winsaveview()
  vim.cmd('keeppatterns %s/\\s\\+$//e')
  vim.fn.winrestview(save)
end

-- Create a command for the function
vim.api.nvim_create_user_command('TrimWS', trim_whitespace, {})

keymap.set('n', '<Leader>tw', ':TrimWS<CR>', { desc = "Trim whitespace" })
keymap.set('n', '<Leader>ww', ':TrimWS<CR> <bar> :w<CR>', { desc = "Trim whitespace + save" })

-- MISC UTILS --

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement
