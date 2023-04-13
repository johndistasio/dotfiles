local keymap = vim.keymap.set

-- Auto-format and highlight a temporary JSON document and allow close with plain :q
keymap('n', '<leader>j',
  ':set ft=json <bar> %!jq<CR> <bar> :setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile<CR>')

-- Highlight a temporary YAML document and allow close with plain :q
keymap('n', '<leader>y', ':set ft=yaml <bar> :setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile<CR>')

local builtin = require('telescope.builtin')

-- Lists files in your current working directory, respects .gitignore
keymap('n', '<leader>ff', builtin.find_files, {})

-- Search for a string in your current working directory and get results live as you type, respects .gitignore.
keymap('n', '<leader>fg', builtin.live_grep, {})

-- Lists open buffers in current neovim instance
keymap('n', '<leader>fb', builtin.buffers, {})

-- Lists LSP references for word under the cursor
keymap('n', '<leader>lr', builtin.lsp_references, {})

-- Goto the implementation of the word under the cursor if there's only one, otherwise show all options in Telescope
keymap('n', '<leader>li', builtin.lsp_implementations, {})

-- Goto the definition of the word under the cursor, if there's only one, otherwise show all options in Telescope
keymap('n', '<leader>ld', builtin.lsp_definitions, {})
