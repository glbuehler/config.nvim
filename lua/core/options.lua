vim.g.mapleader = ' '

vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.g.netrw_banner = 0

vim.opt.number = true

vim.opt.relativenumber = true

vim.opt.shiftwidth = 4

vim.opt.tabstop = 4

vim.opt.expandtab = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- can increase startup time if not scheduled
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
    vim.cmd('colo habamax')
end)
