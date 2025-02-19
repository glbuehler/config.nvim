vim.keymap.set('n', '<C-c>', function()
    vim.cmd('silent! nohl')
end)

vim.keymap.set('n', '<C-j>', 'ddp')
vim.keymap.set('n', '<C-k>', 'kddpk')

vim.keymap.set('n', 'gj', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', 'gk', vim.diagnostic.goto_prev, { desc = 'Next diagnostic' })
vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, { desc = 'Lsp: [A]ctions' })

vim.keymap.set('v', 'g(', 'di(<C-c>pli)<C-c>', { desc = 'Surround with parenthesese' })
