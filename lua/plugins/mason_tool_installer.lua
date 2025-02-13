require('mason-tool-installer').setup({
    ensure_installed = {
        -- lsps
        'lua-language-server',
        'rust_analyzer',

        -- formatters
        'stylua',
        'html',
    },
})
