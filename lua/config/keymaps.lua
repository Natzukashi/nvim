vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'move between splits' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'move between splits' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'move between splits' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'move between splits' })

-- Oil
vim.keymap.set('n', '<leader>e', function() require('oil').toggle_float() end, { desc = 'Toggle Oil Float' })
