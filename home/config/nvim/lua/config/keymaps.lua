-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

-- Register custom keymaps for temporary JSON and YAML file "scratchpads".
-- These will auto-format the content pasted into them and allow closing with plain "q".
wk.register({
  j = {
    name = "scratchpad",
    j = {
      ":set ft=json <bar> %!jq<CR> <bar> :setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile<CR>",
      "JSON",
    },
    y = {
      ":set ft=yaml <bar> :setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile<CR>",
      "YAML",
    },
  },
}, { prefix = "<leader>" })
