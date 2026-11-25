return {
    {
        'CRAG666/code_runner.nvim',
        dependencies = { 'CRAG666/betterTerm.nvim' },
        keys = { { '<leader>r', '<cmd>RunCode<cr>', desc = 'Run code' } },
        opts = {
            mode = 'better_term',
            better_term = {
                clean = false, -- true clears the terminal before each run
                number = 10, -- terminal ID used for runs
            },
            filetype = {
                python = 'python3 -u',
                c = 'cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt',
            },
        },
    },
    {
        'CRAG666/betterTerm.nvim',
        opts = {
            position = 'bot', -- bottom split, like VS Code
            size = 15,
        },
    },
}
