-- Set leader key first
vim.g.mapleader = " "

require("theme")

-- Load core configs
require("settings")  -- basic vim options
require("keymaps")   -- custom keymaps

-- Load plugins
require("plugins")   -- packer plugin list

-- Load format settings
require("format")

vim.api.nvim_create_autocmd("DirChanged", {
  callback = function()
    -- refresh nvim-tree to match new cwd
    require("nvim-tree.api").tree.reload()
  end,
})
