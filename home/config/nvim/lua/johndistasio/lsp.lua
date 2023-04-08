require('mason').setup()

require('mason-lspconfig').setup {
  ensure_installed = {
    -- bash
    'bashls',

    -- golang
    'gopls',

    -- python
    'pyright',

    -- lua
    'lua_ls',

    -- terraform
    'terraformls',

    -- typescript
    'tsserver',
  },
}

vim.g.coq_settings = {
  clients = {
    snippets = {
      enabled = false
    },
  },
  display = {
    icons = {
      mode = 'none'
    },
  },
}
local coq = require 'coq'

-- :h mason-lspconfig-automatic-server-setup
require('mason-lspconfig').setup_handlers {

  -- default handler
  function (server_name)
    require('lspconfig')[server_name].setup(coq.lsp_ensure_capabilities({}))
  end,

  ['lua_ls'] = function ()
    require('lspconfig').lua_ls.setup(
      coq.lsp_ensure_capabilities({
      settings = {
        Lua = {
          diagnostics = {
            globals = {'vim', 'require'},
          },
        },
      },
    }))
  end,
}
