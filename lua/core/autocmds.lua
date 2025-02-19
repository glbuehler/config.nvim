vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd('VimEnter', {
    desc = 'Open netrw if no path specified',
    group = vim.api.nvim_create_augroup('auto-netrw', { clear = true }),
    callback = function()
        if vim.fn.argc() == 0 then
            vim.cmd('e .')
        end
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    desc = 'make html indentation work with html formatter',
    group = vim.api.nvim_create_augroup('html-indent', { clear = true }),
    pattern = 'html',
    callback = function()
        require('nvim-treesitter')
        vim.opt_local.indentexpr = 'nvim_treesitter#indent()-4'
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    desc = 'disable sql slow C-c',
    group = vim.api.nvim_create_augroup('sql-fast-C-c', { clear = true }),
    pattern = 'sql',
    callback = function()
        vim.keymap.set('i', '<C-c>', '<Esc>', { noremap = true })
    end,
})
