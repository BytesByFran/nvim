return {
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "pylsp", "ruff", "stylua" } },
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = { auto_install = true },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      --local lspconfig = require("lspconfig")
      vim.lsp.config('pylsp', {})
      vim.lsp.config('ruff', {})

      vim.lsp.enable('pylsp')
      vim.lsp.enable('ruff')

      -- Teclas de acceso rápido (LSP)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "LSP: Información" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "LSP: Ir a definición" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "LSP: Acciones" })
      vim.keymap.set('n', '<leader>tr', vim.lsp.buf.references, { desc = "LSP: Referencias" })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "LSP: Renombrar" })
      vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, { desc = "LSP: Siguiente diagnóstico" })
      

    end,
  },
}
