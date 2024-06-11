local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.formatting.prettier,
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end

    -- Function to set buffer-local keymaps
    local function buf_set_keymap(mode, lhs, rhs, opts)
      opts = opts or { noremap = true, silent = true }
      vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- Keybind for auto-fixing ESLint errors
    buf_set_keymap('n', '<leader>ef', '<cmd>lua vim.lsp.buf.code_action({ only = { "source.fixAll.eslint" } })<CR>')
  end,
})
