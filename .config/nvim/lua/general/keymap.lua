
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('t', 'jj', '<C-\\><C-n>')


-- horizontal resize
vim.keymap.set('n', '<C-S-Up>', '<Cmd>resize +5<CR>', {silent = true})
vim.keymap.set('n', '<C-S-Down>', '<Cmd>resize -5<CR>', {silent = true})

-- vertical resize
vim.keymap.set('n', '<C-S-Left>', '<Cmd>vertical resize +5<CR>', {silent = true})
vim.keymap.set('n', '<C-S-Right>', '<Cmd>vertical resize -5<CR>', {silent = true})

-- buffer cycling with tab
vim.keymap.set('n', '<Tab>', '<Cmd>bnext<CR>')
vim.keymap.set('n', '<S-Tab>', '<Cmd>bprevious<CR>')
