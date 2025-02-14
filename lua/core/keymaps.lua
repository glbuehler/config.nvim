vim.keymap.set('n', '<C-c>', ':nohl\n')

vim.keymap.set('n', '<C-j>', 'ddp')
vim.keymap.set('n', '<C-k>', 'kddpk')

vim.keymap.set('n', 'gj', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', 'gk', vim.diagnostic.goto_prev, { desc = 'Next diagnostic' })
vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, { desc = 'Lsp: [A]ctions' })
