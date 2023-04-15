-- Configuration for telescope.nvim

local builtin = require('telescope.builtin')
local keymap = vim.keymap.set

-- Lists files in your current working directory, respects .gitignore
keymap('n', '<leader>ff', builtin.find_files, {})

-- Search for a string in your current working directory and get results live as you type, respects .gitignore.
keymap('n', '<leader>fg', builtin.live_grep, {})

-- Lists open buffers in current neovim instance
keymap('n', '<leader>fb', builtin.buffers, {})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    -- Lists LSP references for word under the cursor
    keymap('n', '<leader>fr', builtin.lsp_references, { buffer = args.buf })

    -- Goto the implementation of the word under the cursor if there's only one, otherwise show all options in Telescope
    keymap('n', '<leader>fi', builtin.lsp_implementations, { buffer = args.buf })

    -- Goto the definition of the word under the cursor, if there's only one, otherwise show all options in Telescope
    keymap('n', '<leader>fd', builtin.lsp_definitions, { buffer = args.buf })

    keymap('n', '<leader>fd', builtin.lsp_definitions, { buffer = args.buf })
  end,
})
