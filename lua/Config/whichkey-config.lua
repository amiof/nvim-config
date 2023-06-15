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
  -- ["w"] = { "<cmd>update!<CR>", "Save" },
  -- ["q"] = { "<cmd>q!<CR>", "Quit" },
  ["f"] = { "", "format code" },
  u = { name = "delete all notification" },
  s = {
    name = "serarch",
  },
  c = {
    name = "crate rust",
  },
  w = {
    name = "lsp workspace",
  },
  t = {
    name = "Tabs",
  },
  x = {
    name = "Trouble",
  },
  q = {
    name = "quite and..."
  },
  l = {
    name = "dianotics and ...",
    t= {name = "[t]est whit neotest"}
  },
  h = {
    name = "git...",
  }





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
