return {
    'echasnovski/mini.map',
    config = function()
        require('mini.map').setup()
        local map = require('mini.map')
        map.setup({
            integrations = {
                map.gen_integration.builtin_search(),
                map.gen_integration.diagnostic({
                    error = 'DiagnosticFloatingError',
                    warn  = 'DiagnosticFloatingWarn',
                    info  = 'DiagnosticFloatingInfo',
                    hint  = 'DiagnosticFloatingHint',
                }),
            },
            symbols = {
                encode = map.gen_encode_symbols.dot('4x2'),
            },
            window = {
                side = 'right',
                width = 20, -- set to 1 for a pure scrollbar :)
                winblend = 15,
                show_integration_count = false,
            },
        })
    end
}

-- lvim.autocommands = {
--   {
--     {"BufEnter", "Filetype"},
--     {
--       desc = "Open mini.map and exclude some filetypes",
--       pattern = { "*" },
--       callback = function()
--         local exclude_ft = {
--           "qf",
--           "NvimTree",
--           "toggleterm",
--           "TelescopePrompt",
--           "alpha",
--           "netrw",
--         }

--         local map = require('mini.map')
--         if vim.tbl_contains(exclude_ft, vim.o.filetype) then
--           vim.b.minimap_disable = true
--           map.close()
--         elseif vim.o.buftype == "" then
--           map.open()
--         end
--       end,
--     },
--   },
-- }
