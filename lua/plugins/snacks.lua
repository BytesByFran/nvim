return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },     -- Manejo eficiente de archivos gigantes
    dashboard = { enabled = true },   -- Pantalla de inicio moderna
    explorer = { enabled = true },    -- Explorador de archivos integrado
    input = { enabled = true },       -- Inputs de Neovim más estéticos
    picker = { enabled = true },      -- Selector de archivos y más
    gh = { enabled = true },          -- Integración con GitHub
    notifier = { enabled = true },    -- Notificaciones flotantes estilo toast
    statuscolumn = { enabled = true },-- Números de línea y signos mejorados
    words = { enabled = true },       -- Resalta la palabra bajo el cursor
    zen = { enabled = true},

    picker = {
        enabled = true,
        sources = {
            files = {
              filter = {
                exclude = { "*.json", "*.pyc", "__pycache__", ".git" }
              }
            },
            gh_issue = {},
            gh_pr = {},
        }
    },

    -- Disabled modules
    lazygit = { enabled = false },
    terminal = { enabled = false },
    win = { enabled = false },
    dim = {enabled = false},
    image = { enabled = false },
    profiler = { enabled = false },

    }
}
