-- lvim.leader = "space"
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.keymap.set("i", "jj", "<esc>", { noremap = true })
vim.keymap.set("i", "jk", "<esc>", { noremap = true })
vim.keymap.set("i", "kk", "<esc>", { noremap = true })
vim.keymap.set("n", "m", ":BufferLineCycleNex<cr>", { silent = true })
vim.keymap.set("n", "M", ":BufferLineCyclePrev<cr>", { silent = true })
vim.keymap.set("n", "<leader>C", ":bd!<cr>", { desc = "close buffer force", silent = true })
vim.keymap.set("n", "<leader>cc", ":bd<cr>", { desc = "close buffer notForce", silent = true })
vim.keymap.set("n", "\\", ":vsplit<cr>", { silent = true })
vim.keymap.set("n", "<leader>tk", ":windo wincmd K<cr>", { desc = "change window to horizontall", silent = true })
vim.keymap.set("n", "<leader>th", ":windo wincmd H<cr>", { desc = "change window to vertiacl", silent = true })
vim.keymap.set("n", "<leader>ww", ":w<cr>", { desc = 'save buffer', silent = true })
vim.keymap.set("n", "<leader>no", ":noh<cr>", { desc = 'clear search highlight', silent = true })
vim.keymap.set("n", "<leader>qq", ":q!<cr>", { desc = "exit force", silent = true })
vim.keymap.set("n", "<leader>wq", ":wqa<cr>", { desc = "save all and exit", silent = true })
vim.keymap.set("n", "|", ":split<cr>", { silent = true })
vim.keymap.set("n", "<leader>tn", ":tabnew<cr>", { desc = "new tabe", silent = true })
vim.keymap.set("n", "<leader>tz", ":tabnew %<cr>", { desc = "tabe zoom", silent = true })
vim.keymap.set("n", "<leader>tzo", ":tabclose<cr>", { desc = "zoom out tabe", silent = true })
vim.keymap.set("n", "<leader>ss", ":Telescope git_files<cr>", { desc = 'git files search', silent = true })
vim.keymap.set("n", "<leader>mt", ":lua require('telescope').extensions.media_files.media_files()<cr>",
    { desc = 'telescope show media files', silent = true })


-------wheh ctl-v not work in wsl
-- vim.cmd("nnoremap Q <c-v>")

-- Resize window vertically
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -3<CR>', { noremap = true, silent = true })

-- Resize window horizontally
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize -3<CR>', { noremap = true, silent = true })

-- Switch to window above
-- vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })

-- Switch to window below
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>w', { noremap = true, silent = true })

-- Switch to window on the left
-- vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })

-- Switch to window on the right
-- vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })



-- vim.keymap.set("n", "<leader>o", ":NeoTreeFloatToggle<CR>", { desc = "open neotree float", silent = true })
vim.keymap.set("n", "<leader>o", ":Neotree float toggle<CR>", { desc = "open neotree float", silent = true })
-- vim.keymap.set("n", "<leader>e", ":NeoTreeShowToggle<CR>", { desc = "open neotree FileManger", silent = true })
vim.keymap.set("n", "<leader>e", ":Neotree left toggle<CR>", { desc = "open neotree FileManger", silent = true })
--vim.keymap.set("n", "@", ":ZenMode<cr>", { silent = true })
----bindding neoscroll to pageup and ScrollWheelUp ....
vim.cmd(":map <ScrollWheelUp> <C-u>")
vim.cmd(":map <ScrollWheelDown> <C-d>")
vim.cmd(":map <PageDown> <C-d>")
vim.cmd(":map <PageUp> <C-u>")



-------------carate config for rust

local crates = require('crates')

vim.keymap.set('n', '<leader>ct', crates.toggle, { desc = "rust crate toggle", silent = true })
vim.keymap.set('n', '<leader>cr', crates.reload, { desc = "rust crate reload", silent = true })
vim.keymap.set('n', '<leader>cv', crates.show_versions_popup, { desc = "rust crate show versions", silent = true })
vim.keymap.set('n', '<leader>cf', crates.show_features_popup, { desc = "rust crate show features", silent = true })
vim.keymap.set('n', '<leader>cd', crates.show_dependencies_popup,
    { desc = "rust crate show dependencies", silent = true })
-- vim.keymap.set('n', '<leader>cu', crates.update_crate, { desc = "rust crate update", silent = true })
-- vim.keymap.set('v', '<leader>cu', crates.update_crates, { desc = "rust create update", silent = true })
-- -- vim.keymap.set('n', '<leader>ca', crates.update_all_crates, { desc = "update all crate", silent = true })
-- vim.keymap.set('n', '<leader>cU', crates.upgrade_crate, { desc = "rust crate update", silent = true })
-- vim.keymap.set('v', '<leader>cU', crates.upgrade_crates, { desc = "rust crate update", silent = true })
-- vim.keymap.set('n', '<leader>cA', crates.upgrade_all_crates, { desc = "rust open neotree FileManger", silent = true })

vim.keymap.set('n', '<leader>cH', crates.open_homepage, { desc = "open rust home page", silent = true })
vim.keymap.set('n', '<leader>cR', crates.open_repository, { desc = "open rust crate repository", silent = true })
vim.keymap.set('n', '<leader>cD', crates.open_documentation, { desc = "open rust documentaion", silent = true })
vim.keymap.set('n', '<leader>cC', crates.open_crates_io, { desc = "open rust crate.io", silent = true })
local function show_documentation()
    local filetype = vim.bo.filetype
    if vim.tbl_contains({ 'vim', 'help' }, filetype) then
        vim.cmd('h ' .. vim.fn.expand('<cword>'))
    elseif vim.tbl_contains({ 'man' }, filetype) then
        vim.cmd('Man ' .. vim.fn.expand('<cword>'))
    elseif vim.fn.expand('%:t') == 'Cargo.toml' and require('crates').popup_available() then
        require('crates').show_popup()
    else
        vim.lsp.buf.hover()
    end
end

vim.keymap.set('n', '<leader>cK', show_documentation, { desc = "show more package doc", silent = true })


----------confgi for rust neotest
vim.keymap.set('n', "<leader>ltF", ":lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
    { desc = "Debug File", silent = true })
vim.keymap.set('n', "<leader>ltL", ":lua require('neotest').run.run_last({strategy = 'dap'})<cr>",
    { desc = "Debug Last", silent = true })
vim.keymap.set('n', "<leader>lta", ":lua require('neotest').run.attach()<cr>", { desc = "Attach", silent = true })
vim.keymap.set('n', "<leader>ltf", ":lua require('neotest').run.run(vim.fn.expand('%'))<cr>",
    { desc = "File", silent = true })
vim.keymap.set('n', "<leader>ltl", ":lua require('neotest').run.run_last()<cr>", { desc = "Last", silent = true })
vim.keymap.set('n', "<leader>ltn", ":lua require('neotest').run.run()<cr>", { desc = "Nearest", silent = true })
vim.keymap.set('n', "<leader>ltN", ":lua require('neotest').run.run({strategy = 'dap'})<cr>",
    { desc = "Debug Nearest", silent = true })
vim.keymap.set('n', "<leader>lto", ":lua require('neotest').output.open({ enter = true })<cr>",
    { desc = "Output", silent = true })
vim.keymap.set('n', "<leader>lts", ":lua require('neotest').run.stop()<cr>", { desc = "Stop", silent = true })
vim.keymap.set('n', "<leader>ltS", ":lua require('neotest').summary.toggle()<cr>", { desc = "Summary", silent = true })

---------------lazygit

vim.keymap.set("n", "<leader>hg", ":LazyGit<cr>", { desc = 'open Lazygit', silent = true })



-- ---------------fold-preview
local keymap = vim.keymap
keymap.amend = require('keymap-amend')
local map = require('fold-preview').mapping

keymap.amend('n', 'h', map.show_close_preview_open_fold)
keymap.amend('n', 'l', map.close_preview_open_fold)
keymap.amend('n', 'k', map.close_preview_without_defer)
keymap.amend('n', 'j', map.close_preview_without_defer)
keymap.amend('n', 'zo', map.close_preview)
keymap.amend('n', 'zO', map.close_preview)
keymap.amend('n', 'zc', map.close_preview_without_defer)
keymap.amend('n', 'zR', map.close_preview)
keymap.amend('n', 'zM', map.close_preview_without_defer)
--
-- -------------------------------end fold-preview
--
--
--
----------------------------prettier
vim.keymap.set("n", "<leader>p", ":Prettier<cr>", { desc = "prettier", silent = true })
--
--
--------------------------end prettier
