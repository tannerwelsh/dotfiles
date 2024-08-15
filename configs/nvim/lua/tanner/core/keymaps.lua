vim.g.mapleader = "'"

local keymap = vim.keymap -- to enable direct access to keymap

-- WINDOW MGMT --

-- move between panes
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to pane below" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to pane above" })
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to pane left" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to pane right" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- EDITING --

keymap.set("n", "x", '"_x', { desc = "Delete single character without copying into register" })

keymap.set("n", "K", ":move .-2<CR>", { desc = "Move current line up (inverse of J)" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- MISC UTILS --

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
