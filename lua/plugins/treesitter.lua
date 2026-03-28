return {
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = { max_lines = 3 },
  },
  {
      'nvim-treesitter/nvim-treesitter',
      lazy = false,
      build = ':TSUpdate',
      opts = {
        ensure_installed = {  'python',},
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      },
  }
}
