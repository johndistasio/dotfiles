vim.g.python3_host_prog = vim.env.HOME .. '/.venv/neovim/bin/python3'

require 'johndistasio.options'
require 'johndistasio.packer'
require 'johndistasio.lualine'
require 'johndistasio.treesitter'
require 'johndistasio.lsp'
require 'johndistasio.keymaps'
require 'johndistasio.telescope'

require('oil').setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.cmd('colorscheme catppuccin-frappe')

vim.cmd('COQnow --shut-up')
