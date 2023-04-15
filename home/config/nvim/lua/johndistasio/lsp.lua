require('mason').setup()

require('mason-lspconfig').setup {
  ensure_installed = {
    'bashls',
    'denols',
    'gopls',
    'pyright',
    'lua_ls',
    'rust_analyzer',
    'terraformls',
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

local nvim_lsp = require 'lspconfig'

-- :h mason-lspconfig-automatic-server-setup
require('mason-lspconfig').setup_handlers {

  -- default handler
  function(server_name)
    nvim_lsp[server_name].setup(coq.lsp_ensure_capabilities({}))
  end,

  ['lua_ls'] = function()
    nvim_lsp['lua_ls'].setup(
      coq.lsp_ensure_capabilities({
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim', 'require' },
            },
          },
        },
      }))
  end,

  ['denols'] = function()
    nvim_lsp['denols'].setup(
      coq.lsp_ensure_capabilities({
        root_dir = nvim_lsp.util.root_pattern("deno.json", "deno.jsonc"),
      })
    )
  end,

  ['tsserver'] = function()
    nvim_lsp['tsserver'].setup(
      coq.lsp_ensure_capabilities({
        root_dir = nvim_lsp.util.root_pattern("package.json"),
        single_file_support = false,
      })
    )
  end,

}

-- Set up LSP-specific keybinds when an LSP attaches to the current buffer
-- :h lsp
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })
  end,
})
