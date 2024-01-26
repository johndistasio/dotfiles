return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        highlight_groups = {
          Error = {
            undercurl = true,
          },
        },
      })
    end,
  },
  { "sainnhe/everforest" },
  { "icymind/NeoSolarized" },
  { "joshdick/onedark.vim" },
  { "junegunn/seoul256.vim" },
  { "morhetz/gruvbox" },
  -- catpuccin is installed by default in LazyVim

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },
}
