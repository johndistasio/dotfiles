return {
  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        -- Set custom configuration to stop notify from complaining when transparency is turned on.
        background_colour = "#000000",
      })
    end,
  },
}
