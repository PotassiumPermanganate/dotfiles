vim.g.mapleader = ','
vim.o.encoding = 'utf-8'

-- line number
vim.o.number = true
vim.o.relativenumber = true

-- use system clipboard
vim.o.clipboard = 'unnamedplus'

-- enable true terminal colors
vim.o.termguicolors = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.splitbelow = true
vim.o.splitright = true

-- vim.o.undofile = true -- store undos persistently on disk (~/.local/share/nvim/undo/)
vim.o.undofile = true
vim.o.list = true

vim.o.smartindent = true

vim.o.ignorecase = true -- ignore case when searching
vim.o.smartcase = true -- case insensitive search until caps is used
vim.o.scrolloff = 20 -- start scrolling when cursor is n lines away from btm

-- use windows clipboard if in wsl
if vim.fn.has('wsl') == 1 then
    local yankGrp = vim.api.nvim_create_augroup('Yank', { clear = true })
    vim.api.nvim_create_autocmd('TextYankPost', {
        command = [[call system('/mnt/c/windows/system32/clip.exe ',@")]],
        group = yankGrp,
    })
end
