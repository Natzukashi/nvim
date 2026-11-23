vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

vim.keymap.set('n', '<M-h>', '<C-w>h', { desc = 'move between splits' })
vim.keymap.set('n', '<M-k>', '<C-w>k', { desc = 'move between splits' })
vim.keymap.set('n', '<M-j>', '<C-w>j', { desc = 'move between splits' })
vim.keymap.set('n', '<M-l>', '<C-w>l', { desc = 'move between splits' })

-- Oil
vim.keymap.set('n', '<leader>e', function() require('oil').toggle_float() end, { desc = 'Toggle Oil Float' })

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle Undotree' })

-- Lazygit
vim.keymap.set('n', '<leader>lg', ':LazyGit<CR>', { desc = 'Open Lazygit' })
