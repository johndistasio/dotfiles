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
  { "sainnhe/sonokai" },
  { "junegunn/seoul256.vim" },
  { "morhetz/gruvbox" },
  { "rebelot/kanagawa.nvim" },
  { "axvr/photon.vim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "romgrk/doom-one.vim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "kxzk/skull-vim" },
  { "kvrohit/rasmus.nvim" },
  { "NTBBloodbath/doom-one.nvim" },
  { "gmr458/cold.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "catppuccin-frappe",
      colorscheme = "rasmus",
    },
  },
}
