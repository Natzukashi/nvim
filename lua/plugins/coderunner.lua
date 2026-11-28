return {
    {
        'CRAG666/code_runner.nvim',
        dependencies = { 'CRAG666/betterTerm.nvim' },
        cmd = { 'RunCode', 'RunFile', 'RunProject', 'RunClose', 'CRFiletype', 'CRProjects' },
        opts = {
            mode = 'better_term',
            better_term = {
                clean = false,
                number = 10,
            },
            filetype = {
                python = 'python3 -u',
                c = 'cd $dir && gcc $fileName -o $fileNameWithoutExt -lm && $dir/$fileNameWithoutExt',
            },
        },
    },
    {
        'CRAG666/betterTerm.nvim',
        opts = {
            position = 'bot',
            size = 15,
        },
    },
}
