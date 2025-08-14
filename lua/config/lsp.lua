-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"volar",
		"html",
		"cssls",
		"jsonls",
		"emmet_ls",
	},
})

-- LSP Config
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "tsserver", "volar", "html", "cssls", "jsonls", "emmet_ls" }
for _, server in ipairs(servers) do
	lspconfig[server].setup({
		capabilities = capabilities,
	})
end
