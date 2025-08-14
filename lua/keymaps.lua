vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- nvim-tree toggle
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Telescope shortcuts
vim.api.nvim_set_keymap("n", "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>f", ":FormatWrite", { noremap = true, silent = true })

-- setup gitsigns keymap
local gs = require("gitsigns")

-- Stage/unstage hunks
vim.keymap.set("n", "<leader>hs", gs.stage_hunk) -- stage current hunk
vim.keymap.set("n", "<leader>hu", gs.undo_stage_hunk) -- undo stage

-- Stage/unstage buffer
vim.keymap.set("n", "<leader>hS", gs.stage_buffer) -- stage whole file
vim.keymap.set("n", "<leader>hU", gs.reset_buffer) -- unstage/reset whole file

-- Reset / preview hunks
vim.keymap.set("n", "<leader>hr", gs.reset_hunk) -- reset current hunk
vim.keymap.set("n", "<leader>hp", gs.preview_hunk) -- preview hunk (deleted lines visible)

-- Blame / Diff
vim.keymap.set("n", "<leader>hb", gs.blame_line) -- show git blame for current line
vim.keymap.set("n", "<leader>hd", gs.diffthis) -- diff current buffer

-- Toggle
vim.keymap.set("n", "<leader>ht", gs.toggle_deleted) -- toggle showing deleted lines inline (if supported)
vim.keymap.set("n", "<leader>hl", gs.toggle_linehl) -- toggle line highlight
vim.keymap.set("n", "<leader>hw", gs.toggle_word_diff) -- toggle word diff
