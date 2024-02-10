return {
  {
    "stevearc/oil.nvim",
    keys = {
      { "-", "<cmd>Oil<cr>", { desc = "Open parent directory" } },
    },
    lazy = false,
    config = function()
      require("oil").setup({
        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}
