require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'bash',
    'go',
    'hcl',
    'javascript',
    'lua',
    'make',
    'proto',
    'python',
    'typescript',
  },

  highlight = {
    enable = true,
  },
}

vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldenable = false
