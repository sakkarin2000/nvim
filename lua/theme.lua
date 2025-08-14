require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	transparent_background = false,
	integrations = { gitsigns = true, telescope = true },
})

vim.cmd([[colorscheme catppuccin]])
