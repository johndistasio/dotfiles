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
    'sumneko_lua',

    -- terraform
    'terraformls',

    -- typescript
    'tsserver',
  },
}

-- :h mason-lspconfig-automatic-server-setup
require('mason-lspconfig').setup_handlers {
  -- default handler
  function (server_name)
    require('lspconfig')[server_name].setup{}
  end,

  ['sumneko_lua'] = function ()
    require('lspconfig').sumneko_lua.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = {'vim'},
          },
        },
      },
    }
  end,
}
