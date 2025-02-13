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
