return {
  {
    "stevearc/oil.nvim",
    keys = {
      { "-", "<cmd>Oil<cr>", { desc = "Open parent directory" } },
    },
    lazy = false,
    config = function()
      require("oil").setup({
        -- only allow name editing
        constrain_cursor = "name",
        view_options = {
          show_hidden = true,
        },
      })
    end,
  },
}
