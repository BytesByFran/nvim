return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        transparent = false,
        variant = "moon",
        styles = {
          bold = true,
          italic = false,
        },
        palette = {
          moon = {
            base = "#07070d",
          },
        },
      })

      vim.cmd("colorscheme rose-pine")
      -- vim.cmd("autocmd VimEnter * hi ZenBg ctermbg=NONE guibg=NONE")

      -- vim.api.nvim_create_autocmd("VimEnter", {
      --   callback = function()
      --     vim.cmd("hi ZenBg ctermbg=NONE guibg=NONE")
      --   end,
      -- })
    end,
  },
}
