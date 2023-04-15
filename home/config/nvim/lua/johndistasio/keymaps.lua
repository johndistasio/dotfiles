-- Generic keybinds

local keymap = vim.keymap.set

-- Auto-format and highlight a temporary JSON document and allow close with plain :q
keymap('n', '<leader>j',
  ':set ft=json <bar> %!jq<CR> <bar> :setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile<CR>')

-- Highlight a temporary YAML document and allow close with plain :q
keymap('n', '<leader>y', ':set ft=yaml <bar> :setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile<CR>')
