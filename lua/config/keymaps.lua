-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Go to Dashboard
vim.keymap.set("n", "<leader>h", ":Alpha<CR>")

-- Ctrl+Z
-- Normal mode undo mapping
vim.keymap.set("n", "<C-z>", "u", { noremap = true, silent = true })
-- Insert mode undo mapping
vim.keymap.set("i", "<C-z>", "<Esc>u", { noremap = true, silent = true })
-- Disable Ctrl+Z suspend behavior in terminal
vim.api.nvim_set_keymap("n", "<C-z>", "", { noremap = true, silent = true })

-- ToggleTerm
vim.keymap.set("n", "<leader><C-T>", ":ToggleTerm<CR>", { desc = "Toggle Terminal" })
--vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], { desc = "Exit Terminal Mode" })
exitTerm = function()
  vim.cmd(":ToggleTerm")
end
vim.keymap.set("t", "<esc><esc>", exitTerm)

--Flutter Commands
--vim.keymap.set("n", "<leader><C-FR>", ":FlutterRun<CR>", { desc = "Flutter Run" })
vim.api.nvim_create_user_command("FR", "FlutterRun", {})
vim.api.nvim_create_user_command("FD", "FlutterDevices", {})
vim.api.nvim_create_user_command("FE", "FlutterEmulators", {})
