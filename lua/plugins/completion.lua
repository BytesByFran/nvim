return {
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets', "zbirenbaum/copilot.lua" },
    version = 'v1.*',
    opts = {
      keymap = {
        preset = 'enter',
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
    }
  }
}
