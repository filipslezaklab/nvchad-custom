local chad_on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local options = {
  server = {
    standalone = true,
    on_attach =  chad_on_attach,
    capabilities,
  },
}
return options
