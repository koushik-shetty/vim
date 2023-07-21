local lsp = require('lsp-zero').preset({})
lsp.preset('recommended')

--lsp.on_attach(function(client, bufnr)
    --	lsp.default_keymaps({buffer = bufnr})
    --end)
    --
    lsp.ensure_installed({
        'tsserver',
        'eslint',
        'rust_analyzer',
        'gopls',
        'clangd',
        'cssls',
        'html',
        'pyright',
    })

    -- Fix Undefined global 'vim'
    lsp.nvim_workspace()


    local cmp = require('cmp')
    local cmp_select = {behavior = cmp.SelectBehavior.Select}
    local cmp_mappings = lsp.defaults.cmp_mappings({
        ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
        ['<Ctrl-i>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    })

    lsp.setup_nvim_cmp({
        mapping = cmp_mappings
    })

    -- (Optional) Configure lua language server for neovim
    require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
    require'lspconfig'.gopls.setup{}
    require('lspconfig').eslint.setup({
        single_file_support = false,
        on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                command = "EslintFixAll",
            })
        end
    })


    lsp.setup()
