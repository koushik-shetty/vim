vim.g.mapleader= " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


--" delete without yanking
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("n", "<c-s-v>", "<c-v>")
--" replace currently selected text with default register
--"-" without yanking it
vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>p", '"_dP')
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("v", "<C-J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-K>", ":m '<-2<CR>gv=gv")

