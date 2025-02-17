local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require('plugins.cmp'),
    require('plugins.conform'),
    require('plugins.gitsigns'),
    require('plugins.lspconfig'),
    require('plugins.lualine'),
    require('plugins.mason'),
    require('plugins.mason_tool_installer'),
    require('plugins.telescope'),
    require('plugins.treesitter'),
    {
        'folke/todo-comments.nvim',
        event = 'VimEnter',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = { signs = false },
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
    },
})
