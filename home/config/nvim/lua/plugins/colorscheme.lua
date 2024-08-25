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
  { "junegunn/seoul256.vim" },
  { "morhetz/gruvbox" },
  { "rebelot/kanagawa.nvim" },
  { "romgrk/doom-one.vim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "AlexvZyl/nordic.nvim" },
  { "lewpoly/sherbet.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "catppuccin-frappe",
      --colorscheme = "sherbet",
      --colorscheme = "nordic",
      colorscheme = "kanagawa",
    },
  },
}
