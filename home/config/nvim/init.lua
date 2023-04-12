vim.g.python3_host_prog = vim.env.HOME .. '/.venv/neovim/bin/python3'

require 'johndistasio.options'
require 'johndistasio.plugins'
require 'johndistasio.keymaps'
require 'johndistasio.lualine'
require 'johndistasio.treesitter'
require 'johndistasio.lsp'

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.cmd('colorscheme catppuccin-frappe')

vim.cmd('COQnow --shut-up')
