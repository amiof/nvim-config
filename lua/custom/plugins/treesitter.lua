return {
  "nvim-treesitter/nvim-treesitter",
  module = true,
  event = {
    "BufReadPost", "BufNewFile"
  },
  cmd = {
    "TSInstall",
    "TSInstallInfo",
    "TSUpdate",
    "TSBufEnable",
    "TSBufDisable",
    "TSEnable",
    "TSDisable",
    "TSModuleInfo",
  },
  build = ":TSUpdate",

  config = function()
    local configs = require "nvim-treesitter.configs"

    configs.setup {

      ensure_installed = "all",

      ignore_install = { "haskell", "haskell_persistent" }, -- List of parsers to ignore installing
      highlight = {
        enable = true,                                      -- false will disable the whole extension
        disable = {  },                               -- list of language that will be disabled
        additional_vim_regex_highlighting = true,
      },
      autopairs = {
        enable = true,
      },
      indent = {
        enable = false,
        disable = {}
      },

      rainbow = {
        -- disable = { 'jsx', 'cpp','tsx' },
        enable = true,
        extended_mode = false,
        max_file_lines = nil,
        -- list of languages you want to disable the plugin for
        -- Which query to use for finding delimiters
        -- query = 'rainbow-parens-react',
        -- Highlight the entire buffer all at once
        -- strategy = require('ts-rainbow').strategy.global,
      },
      autotag = {
        enable = true,
      },

      sync_install = false,
    }
  end
}
