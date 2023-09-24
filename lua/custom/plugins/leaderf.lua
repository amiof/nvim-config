return {
    "Yggdroot/LeaderF",
    config = function()
        vim.g.Lf_WindowPosition = "popup"
        vim.cmd("let g:Lf_StlSeparator = { 'right': '', 'left': '' }")
        vim.cmd('let g:Lf_PopupBorders = ["═","║","═","║","╔","╗","╝","╚"]')
        -- vim.cmd("let g:Lf_StlColorscheme = 'tokyonight'")
    end
}
