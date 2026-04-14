return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},

	config = function()
		require("telescope").load_extension("fzf")
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>f", builtin.git_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = "Telescope quickfix" })
		vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>tw", builtin.lsp_dynamic_workspace_symbols, {})
		vim.keymap.set("n", "<leader>ts", builtin.lsp_document_symbols, {})
		vim.keymap.set("n", "<leader>tc", builtin.colorscheme, {})
		vim.keymap.set("n", "<leader>th", builtin.help_tags, {})
		vim.keymap.set("n", "<leader>tr", builtin.lsp_references, {})
		vim.keymap.set("n", "<leader>tdw", builtin.diagnostics, {})
		vim.keymap.set("n", "<leader>gl", builtin.git_commits, {})
		vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
		vim.keymap.set("n", "<leader>td", "<cmd>Telescope diagnostics bufnr=0<cr>", {})
		vim.keymap.set("n", "<leader>tt", ":TodoTelescope<cr>", {})
	end,
}
