local lspconfig = require('lspconfig')

-- TSServer setup for JavaScript/TypeScript
lspconfig.tsserver.setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
}

-- ESLint setup
lspconfig.eslint.setup{}
