return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      python = {
            --"ruff_organize_imports", 
            "ruff_format", 
            "ruff_fix"
      },
      lua = { "stylua" },
      json = { "prettierd" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
