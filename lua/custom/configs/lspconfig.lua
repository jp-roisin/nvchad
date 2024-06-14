local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "eslint", "tsserver", "clangd", "rust_analyzer", "solargraph", "texlab" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {}
end
