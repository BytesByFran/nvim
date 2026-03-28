return  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        search = {
          enabled = false,
          highlight = { backdrop = false },
          jump = { history = true, register = true, nohlsearch = true },
          search = {},
        },
      },
    },
    keys = {
      {
        "<leader>s",
        mode = { "n", "x", "o" },
        function() require("flash").jump() end,
        desc = "Flash",
      },
      { "<leader>F", "<Nop>" },
    },
  }

