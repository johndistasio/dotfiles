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

-- :h mason-lspconfig-automatic-server-setup
require('mason-lspconfig').setup_handlers {
  -- default handler
  function (server_name)
    require('lspconfig')[server_name].setup{}
  end,

  ['lua_ls'] = function ()
    require('lspconfig').lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = {'vim', 'require'},
          },
        },
      },
    }
  end,
}
