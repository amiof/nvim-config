return {
  "nvim-neotest/neotest",
  dependencies = {
    "rouge8/neotest-rust",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-vim-test",
      "vim-test/vim-test",
  },
  config = function()
    -- vim.list_extend(opts.adapters, {
    --   require "neotest-rust",
    -- })
    require("neotest").setup({
      adapters = {
        require("neotest-rust") {
          args = { "--no-capture" },
          dap_adapter = "lldb",
        }
      }
    })
  end,
}
