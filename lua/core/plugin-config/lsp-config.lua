require('mason').setup()
require('mason-lspconfig').setup {
   ensure_installed = { 'lua_ls', 'rust_analyzer' },
}

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

require('mason-lspconfig').setup_handlers {
   function(server_name)
      require('lspconfig')[server_name].setup {
         capabilities = capabilities
      }
   end
}
