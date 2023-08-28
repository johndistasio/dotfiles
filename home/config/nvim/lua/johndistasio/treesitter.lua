require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'bash',
    'erlang',
    'go',
    'hcl',
    'javascript',
    'lua',
    'make',
    'proto',
    'python',
    'rust',
    'terraform',
    'typescript',
  },

  highlight = {
    enable = true,
  },
}

-- TODO remember and comment what this does
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldenable = false
