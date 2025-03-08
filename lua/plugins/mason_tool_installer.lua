return {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
        ensure_installed = {
            -- lsps
            'lua-language-server',
            'rust_analyzer',
            'html',

            -- formatters
            'stylua',
        },
    },
}
