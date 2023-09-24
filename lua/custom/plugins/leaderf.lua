return {
    "Yggdroot/LeaderF",
    config = function()
        vim.g.Lf_WindowPosition = "popup"
        vim.cmd("let g:Lf_StlSeparator = { 'right': '', 'left': '' }")
        vim.cmd('let g:Lf_PopupBorders = ["═","║","═","║","╔","╗","╝","╚"]')
        vim.cmd("let g:Lf_PopupColorscheme = 'onedark'")
        vim.cmd("let g:Lf_WorkingDirectoryMode = 'a'")
        vim.cmd("let g:Lf_UseMemoryCache = 0")
        -- vim.cmd("let g:Lf_PopupPreviewPosition='bottom'")
    end
}
