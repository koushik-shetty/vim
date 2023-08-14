require("kou")


vim.api.nvim_create_autocmd('BufEnter', {
    --pattern = { '*.py', '*.js', '*.ts', '*.jsx', '*.tsx' },
    pattern = '*',
    command = 'colorscheme onedark'
})
vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*.go',
    command = 'colorscheme vscode'
})
vim.api.nvim_command('set linebreak')
