local keymap = vim.keymap

-- 1. General
keymap.set("n", "<leader><leader>", ":w<cr>", { desc = "Guardar archivo" })
keymap.set("n", "<C-c>", ":wq<CR>", { desc = "Guardar y salir con Ctrl+C" })
keymap.set("n", "<leader>w", ":noa w<cr>", { desc = "Guardar (sin formateo/autocmds)" })
keymap.set("v", "<leader>a", ":sort<CR>", { desc = "Ordenar selección" })
keymap.set("i", "<C-c>", "<Esc>") -- Salir de modo insert con Ctrl-C

-- 2. Movimiento
keymap.set("n", "<C-d>", "<C-d>zz") -- Scroll abajo centrado
keymap.set("n", "<C-u>", "<C-u>zz") -- Scroll arriba centrado
keymap.set("n", "n", "nzzzv")       -- Buscar siguiente centrado
keymap.set("n", "N", "Nzzzv")       -- Buscar anterior centrado
keymap.set('n', 'm', '<C-d>')
keymap.set('n', ',', '<C-u>')


-- 3. Gestión de Ventanas
keymap.set('n', '<S-h>', '<C-w>h', { desc = "Ventana Izquierda" })
keymap.set('n', '<S-j>', '<C-w>j', { desc = "Ventana Abajo" })
keymap.set('n', '<S-k>', '<C-w>k', { desc = "Ventana Arriba" })
keymap.set('n', '<S-l>', '<C-w>l', { desc = "Ventana Derecha" })
keymap.set("n", "<leader>+", ":vertical resize +5<cr>")
keymap.set("n", "<leader>-", ":vertical resize -5<cr>")

-- 4. Portapapeles del Sistema
keymap.set('n', '<leader>y', 'ggVG "+y', { desc = "Copiar todo el archivo" })
keymap.set('v', '<leader>y', '"+y', { desc = "Copiar selección" })
keymap.set('n', '<C-y>', ':%y+ <CR>', { desc = "Yank rápido" })

-- 5. Navegación de Listas (Quickfix y Location List)
keymap.set("n", "<C-n>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-p>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
    
-- 6. Snacks.nvim (Integración moderna)
keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "Explorador" })
-- keymap.set('n', '<leader>z', ':Focus<CR>', {})
keymap.set("n", "<leader>z", function() Snacks.zen() end, { desc = "Modo Zen" })
-- keymap.set("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Git (Lazygit)" })
keymap.set("n", "<leader>b", function() Snacks.picker.buffers() end, { desc = "Buffers" })
-- keymap.set("n", "<leader>bd", function() Snacks.bufdelete() end, { desc = "Cerrar Buffer" })
keymap.set("n", "<leader>f", function() Snacks.picker.files() end, { desc = "Buscar Archivos" })
keymap.set("n", "<leader>g", function() Snacks.picker.grep()end, { desc = "Buscar Texto (Grep)" })
keymap.set("n", "<leader>h", function() Snacks.notifier.show_history() end, { desc = "Historial de Notificaciones" })
-- keymap.set("n", "<leader>ft", function() Snacks.terminal() end, { desc = "Terminal Flotante" })
keymap.set("n", "<leader>e", function() Snacks.explorer() end, { desc = "Explorador de Archivos" })
keymap.set("n", "<leader>p", function() Snacks.picker.pickers() end, { desc = "Selector de Pickers" })
--{ "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "GitHub Issues (open)" },
keymap.set("n", "<leader>gi", function() Snacks.picker.gh_issue() end, { desc = "GitHub Issues (open)" })
keymap.set("n", "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, { desc = "GitHub Issues (all)" })
keymap.set("n", "<leader>gp", function() Snacks.picker.gh_pr() end, { desc = "GitHub Pull Requests (open)" })
keymap.set("n", "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, { desc = "GitHub Pull Requests (all)" })

-- 7. Deshabilitar teclas molestas
keymap.set("n", "Q", "<nop>")
keymap.set("n", "<C-f>", "<nop>")
