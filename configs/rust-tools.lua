local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local options = {
  server = {
    on_attach,
    capabilities,
  },
}

return options
