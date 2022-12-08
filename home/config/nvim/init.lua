vim.g.python3_host_prog = vim.env.HOME .. '/.venv/neovim/bin/python'

require 'johndistasio.options'
require 'johndistasio.plugins'
require 'johndistasio.keymaps'
require 'johndistasio.lualine'

vim.cmd('colorscheme everforest')
