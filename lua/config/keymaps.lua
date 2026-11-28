vim.g.mapleader = ' '

local map = vim.keymap.set

-- General
map('n', '<leader>w', ':w<CR>', { desc = 'Save' })
map('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

-- Split navigation
map('n', '<M-h>', '<C-w>h', { desc = 'Move to left split' })
map('n', '<M-j>', '<C-w>j', { desc = 'Move to lower split' })
map('n', '<M-k>', '<C-w>k', { desc = 'Move to upper split' })
map('n', '<M-l>', '<C-w>l', { desc = 'Move to right split' })

-- Oil
map('n', '<leader>e', function() require('oil').toggle_float() end, { desc = 'Toggle Oil float' })

-- Undotree
map('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle Undotree' })

-- Lazygit
map('n', '<leader>lg', ':LazyGit<CR>', { desc = 'Open Lazygit' })

-- code_runner.nvim
map('n', '<leader>rr', ':RunCode<CR>', { desc = 'Run code' })
map('n', '<leader>rf', ':RunFile<CR>', { desc = 'Run file' })
map('n', '<leader>rft', ':RunFile tab<CR>', { desc = 'Run file in tab' })
map('n', '<leader>rp', ':RunProject<CR>', { desc = 'Run project' })
map('n', '<leader>rc', ':RunClose<CR>', { desc = 'Close runner' })
map('n', '<leader>crf', ':CRFiletype<CR>', { desc = 'Edit filetype config' })
map('n', '<leader>crp', ':CRProjects<CR>', { desc = 'Edit projects config' })

-- betterTerm.nvim
map({ 'n', 't' }, '<C-;>', function() require('betterTerm').open() end, { desc = 'Toggle terminal' })
map('n', '<leader>tt', function() require('betterTerm').select() end, { desc = 'Select terminal' })
map('t', '<Esc><Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })
