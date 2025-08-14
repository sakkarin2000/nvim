-- ~/.config/nvim/lua/config/nvim-tree.lua
require("nvim-tree").setup({
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	view = {
		width = 30,
		adaptive_size = true,
	},
	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
				folder = true,
				file = true,
			},
		},
	},
})

-- Keybinding for toggle
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- in your nvim-tree setup or init.lua
vim.api.nvim_create_autocmd("DirChanged", {
	callback = function()
		-- refresh nvim-tree to match new cwd
		require("nvim-tree.api").tree.reload()
	end,
})
