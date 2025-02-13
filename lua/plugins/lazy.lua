local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require('plugins.lspconfig'),
    require('plugins.conform'),
    require('plugins.cmp'),

    'nvim-treesitter/nvim-treesitter',
    'williamboman/mason.nvim',
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
})
