require("kou")


vim.api.nvim_create_autocmd('BufEnter', {
    pattern = { '*.py', '*.js', '*.ts', '*.jsx', '*.tsx' },
    command = 'colorscheme onedark'
})
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*',
    command = 'colorscheme vscode'
})
vim.api.nvim_command('set linebreak')
