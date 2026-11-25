vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- spaces instead of tabs
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.winborder = 'rounded'
vim.opt.clipboard = 'unnamedplus'
vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
vim.opt.fillchars:append { eob = ' ' }
vim.opt.showmode = false
-- use :help "commandname" to get help

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function() vim.highlight.on_yank() end,
})

-- lsp fixes...
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim', 'require' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file('', true),
            },
            enable = false,
        },
    },
})

vim.diagnostic.config { virtual_text = true }

-- inlay hints for type
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client and client:supports_method 'textDocument/inlayHint' then vim.lsp.inlay_hint.enable(true, { bufnr = args.buf }) end
    end,
})
