local _jdtls, jdtls = pcall(require, "lsp.configs.jdtls")
if _jdtls and type(jdtls) ~= "boolean" then
  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = "java",
    callback = jdtls.start,
    desc = "Starting Java language server",
  })
end

local capabilities = require("lsp.handlers").capabilities
