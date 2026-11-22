return {
    'CRAG666/code_runner.nvim',
    cmd = { 'RunCode', 'RunFile', 'RunProject', 'RunClose' },
    config = function()
        require('code_runner').setup {
            mode = 'float',
            filetype = {
                c = 'cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt',
                python = 'python3 -u $fileName',
            },
        }
    end,
    keys = {
        { '<leader>r', '<cmd>RunCode<CR>', desc = 'Run code' },
        { '<leader>rp', '<cmd>RunProject<CR>', desc = 'Run project' },
        { '<leader>rc', '<cmd>RunClose<CR>', desc = 'Close runner' },
    },
}
