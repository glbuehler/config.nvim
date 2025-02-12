local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    'nvim-treesitter/nvim-treesitter',
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
})
