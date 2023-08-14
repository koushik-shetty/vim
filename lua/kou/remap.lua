vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


--" delete without yanking
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("n", "<c-s-v>", "<c-v>")

--toggle pane maximize
vim.keymap.set("n", "M", "<C-w>|<C-w>_")
vim.keymap.set("n", "<C-m>", "<C-w>=")
vim.keymap.set("n", "<Tab>", "<C-w>w")
vim.keymap.set("n", "<S-Tab>", "<C-w>W")
vim.keymap.set("n", "<leader>v", "<C-w>v")
vim.keymap.set("n", "<leader>s", "<C-w>s")

-- Tabs
vim.keymap.set('n', "<C-t>", "<cmd>tabnew<cr>")
vim.keymap.set('n', "<A-Tab>", "<cmd>tabnext<cr>")

--" replace currently selected text with default register
--"-" without yanking it
vim.keymap.set("v", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>p", '"_dP')
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("v", "<C-J>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<C-K>", ":m '<-2<CR>gv=gv")
