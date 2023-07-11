require("kou")

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*',
    command = 'colorscheme onedark'
})
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.go',
  command = 'colorscheme vscode'
})
