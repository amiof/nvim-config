-- lvim.leader = "space"
-- lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.keymap.set("i", "jj", "<esc>", { noremap = true })
vim.keymap.set("i", "jk", "<esc>", { noremap = true })
vim.keymap.set("i", "kk", "<esc>", { noremap = true })
vim.keymap.set("n", "m", ":BufferLineCycleNex<cr>", { silent = true })
vim.keymap.set("n", "M", ":BufferLineCyclePrev<cr>", { silent = true })
vim.keymap.set("n", "<leader>cc", ":bd!<cr>", { desc = "close buffer force", silent = true })
vim.keymap.set("n", "\\", ":vsplit<cr>", { silent = true })
vim.keymap.set("n", "<leader>ww", ":w<cr>", { desc = 'save buffer', silent = true })
vim.keymap.set("n", "<leader>no", ":noh<cr>", { desc = 'clear search highlight', silent = true })
vim.keymap.set("n", "<leader>qq", ":q!<cr>", { desc = "exit force", silent = true })
vim.keymap.set("n", "<leader>wq", ":wq<cr>", { desc = "save and exit", silent = true })
vim.keymap.set("n", "|", ":split<cr>", { silent = true })
vim.keymap.set("n", "<leader>tn", ":tabnew<cr>", { desc = "new tabe", silent = true })
vim.keymap.set("n", "<leader>tz", ":tabnew %<cr>", { desc = "tabe zoom", silent = true })
vim.keymap.set("n", "<leader>tzo", ":tabclose<cr>", { desc = "zoom out tabe", silent = true })
vim.keymap.set("n", "<leader>ss", ":Telescope git_files<cr>", { desc = 'git files search', silent = true })
vim.keymap.set("n", "<leader>m", ":lua require('telescope').extensions.media_files.media_files()<cr>",
    { desc = 'telescope show media files', silent = true })


vim.cmd("nnoremap Q <c-v>")

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


vim.keymap.set("n", "<leader>o", ":NeoTreeFloatToggle<CR>", { desc = "open neotree float", silent = true })
vim.keymap.set("n", "<leader>ee", ":NeoTreeShowToggle<CR>", { desc = "open neotree FileManger", silent = true })
--vim.keymap.set("n", "@", ":ZenMode<cr>", { silent = true })
----bindding neoscroll to pageup and ScrollWheelUp ....
vim.cmd(":map <ScrollWheelUp> <C-u>")
vim.cmd(":map <ScrollWheelDown> <C-d>")
vim.cmd(":map <PageDown> <C-d>")
vim.cmd(":map <PageUp> <C-u>")
