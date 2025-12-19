vim.g.mapleader = " "

-- Tabs & Terminals
vim.keymap.set("t", "<C-w>h", "<C-\\><C-n><C-w>h", {silent = true})
vim.keymap.set("n", "<leader>tbn", vim.cmd.tabNext, {silent = true})
vim.keymap.set("n", "<leader>tbp", vim.cmd.tabprevious, {silent = true})
vim.keymap.set("n", "<leader>tbc", vim.cmd.tabnew, {silent = true})
