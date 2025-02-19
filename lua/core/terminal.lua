local buf = -1
local win = -1

local width = math.floor(vim.o.columns * 0.8)
local height = math.floor(vim.o.lines * 0.8)
local opts = {
    relative = 'editor', -- Relative to the entire editor
    width = width,
    height = height,
    row = (vim.o.lines - height) / 2,
    col = (vim.o.columns - width) / 2,
    style = 'minimal', -- No line numbers, status line, etc.
    border = 'rounded', -- Rounded border
}

local toggle_terminal = function()
    if not vim.api.nvim_buf_is_valid(buf) then
        buf = vim.api.nvim_create_buf(false, true)
    end

    if vim.api.nvim_win_is_valid(win) then
        vim.api.nvim_win_hide(win)
    else
        win = vim.api.nvim_open_win(buf, true, opts)
        if vim.bo[buf].buftype ~= 'terminal' then
            vim.cmd.terminal()
        end
        vim.cmd.startinsert()
    end
end

vim.keymap.set({ 'n', 't' }, '<C-x>', toggle_terminal)
vim.keymap.set('t', '<C-b>', '<C-\\><C-n>')
