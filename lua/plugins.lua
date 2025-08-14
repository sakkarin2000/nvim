-- ~/.config/nvim/lua/plugins.lua
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- nvim-tree
	use({
		"nvim-tree/nvim-tree.lua",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup()
		end,
	})

	-- nvim-treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })()
		end,
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "javascript", "python", "html", "css" },
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	})

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = { "node_modules", ".git/", "dist", "build" },
				},
			})
		end,
	})

	use("mhartington/formatter.nvim")

	-- gitsigns.nvim
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { hl = "GitSignsAdd", text = "+", linehl = "GitSignsAddLn" },
					change = { hl = "GitSignsChange", text = "~", linehl = "GitSignsChangeLn" },
					delete = { hl = "GitSignsDelete", text = "_", linehl = "GitSignsDeleteLn" },
					topdelete = { hl = "GitSignsDelete", text = "‾", linehl = "GitSignsDeleteLn" },
					changedelete = { hl = "GitSignsChange", text = "~", linehl = "GitSignsChangeLn" },
				},
				numhl = false,
				linehl = true, -- highlight whole line for changed lines
				current_line_blame = false,
				word_diff = true, -- highlights changed words
			})
		end,
	})

	use({
		"tpope/vim-fugitive",
	})

	use({ "catppuccin/nvim", as = "catppuccin" })

        -- LSP config
    use "neovim/nvim-lspconfig"

    -- Mason (LSP/DAP/linter/formatter installer)
    use {
        "williamboman/mason.nvim",
        run = function()
            vim.cmd("MasonUpdate")
        end
    }
    use "williamboman/mason-lspconfig.nvim"

    -- Autocompletion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "saadparwaiz1/cmp_luasnip"

    -- Snippets
    use "L3MON4D3/LuaSnip"
end)
