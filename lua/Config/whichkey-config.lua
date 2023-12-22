local whichkey = require "which-key"

local conf = {
  window = {
    border = "single",   -- none, single, double, shadow
    position = "bottom", -- bottom, top
  },
}

local opts = {
  mode = "n",     -- Normal mode
  prefix = "<leader>",
  buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true,  -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = false, -- use `nowait` when creating keymaps
}

local mappings = {
  ['f'] = { "", "󰸱  format code" },
  u = { name = " 󰎟 delete all notification" },
  s = {
    name = "  serarch",
    c = { "<cmd>Telescope colorscheme<CR>", "Change [C]olorscheme" },
    k = { "<cmd>Telescope keymaps<CR>", "search [k]eymaps" },
    C = { "<cmd>Telescope commands<CR>", "search Commands" },
    m = { "<cmd>Telescope man_pages<CR>", "search [m]an_pages" }
  },
  c = {
    name = "  crate rust",
  },
  w = {
    name = " 󰬱 lsp workspace",
  },
  t = {
    name = "  Tabs",
    b = { "toggle cureent line blame" },
    d = { "toggle deleted" },
  },
  x = {
    name = "  Trouble",
  },
  q = {
    name = "  quite"
  },
  l = {
    name = "  diagnostics",
    t = { name = " 󰙨 [t]est whit neotest" },
    s = { name = "  [l]sp[S]aga" }
  },
  h = {
    name = " 󰊢 git",
    b = { "blame line" },
    D = { "diff this ~" },
    d = { "diff this" },
    R = { "reset buffer" },
    u = { "undo stage hunk" },
    S = { "stage buffer" },
    p = { "previwe changes" },

  },
  r = {
    name = " 󰑕 lsp rename"
  },
  d = {
    name = "   document symbol",
    b = { "add [B]reakpoint for debug" }
  },
  n = {
    name = " 󰚲 angular"
  },
  m = {
    name = "   mind",
    o = { "<cmd>MindOpenSmartProject <CR>","mind opne smart project" },
    c = { "<cmd>MindClose <CR>","mind close" },
    t = { "Telescope show media files" },

  }





  -- ["w"] = { "<cmd>update!<CR>", "Save" },
  -- ["q"] = { "<cmd>q!<CR>", "Quit" },
  -- ["f"] = { "", " 󰸱 format code"},

  -- z = {
  --   name = "Packer",
  --   c = { "<cmd>PackerCompile<cr>", "Compile" },
  --   i = { "<cmd>PackerInstall<cr>", "Install" },
  --   s = { "<cmd>PackerSync<cr>", "Sync" },
  --   S = { "<cmd>PackerStatus<cr>", "Status" },
  --   u = { "<cmd>PackerUpdate<cr>", "Update" },
  -- },
  --
  -- g = {
  --   name = "Git",
  --   s = { "<cmd>Neogit<CR>", "Status" },
  -- },
}

whichkey.setup(conf)
whichkey.register(mappings, opts)
