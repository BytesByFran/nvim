-- return {
--   {
--     'saghen/blink.cmp',
--     dependencies = { 'rafamadriz/friendly-snippets', "zbirenbaum/copilot.lua" },
--     version = 'v1.*',
--     opts = {
--       keymap = {
--         preset = 'enter',
--         ["<C-j>"] = { "select_next", "fallback" },
--         ["<C-k>"] = { "select_prev", "fallback" },
--       },
--     }
--   }
-- }
return  {
    "saghen/blink.cmp",
    dependencies = { 
        "rafamadriz/friendly-snippets",
    },
    version = "1.*",
    opts = {
      keymap = {
        preset = "enter",
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
      sources = {
          default = { "lsp", "path", "snippets", "buffer", },
      },
      fuzzy = { implementation = "prefer_rust" },
    },
    opts_extend = { "sources.default" },
  }

