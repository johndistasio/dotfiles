return {
  {
    "stevearc/oil.nvim",
    keys = {
      { "-", "<cmd>Oil<cr>", { desc = "Open parent directoy " } },
    },
    lazy = false,
    config = function()
      require("oil").setup()
    end,
  },
}
