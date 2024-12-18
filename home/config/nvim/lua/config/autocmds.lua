-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("Filetype", {
  pattern = { "markdown" },
  callback = function()
    -- Stop hiding backticks
    vim.opt_local.conceallevel = 0

    -- Disable autocompletion
    require("cmp").setup.buffer({ enabled = false })
  end,
})
