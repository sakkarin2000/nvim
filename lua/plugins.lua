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
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({ "catppuccin/nvim", as = "catppuccin" })
end)
