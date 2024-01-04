return {
    {
        'neovim/nvim-lspconfig',
        opts = {
            inlay_hints = { enabled = true },
        },
        config = function()
            require("custom.plugins.lsp.lspconfig")
        end
    }
}
