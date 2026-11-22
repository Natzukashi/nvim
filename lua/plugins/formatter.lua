return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            python = { 'black' },
        },
        format_on_save = {
            timeout = 500,
            lsp_format = 'fallback',
        },
    },
}
