require('nvim-treesitter.configs').setup({
    ensure_installed = { 'lua', 'python', 'javascript' },
    highlight = { enable = true },
    indent = { enable = true },
    auto_install = true,
})
