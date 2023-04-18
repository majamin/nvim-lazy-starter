----------------------------------------------[[  Example Spec  ]]
-- This file shows how to organize a more involved plugin
-- Plugins requiring fewer options can be put into lua/plugins/init.lua

local M = {
	-- See https://github.com/folke/lazy.nvim#-plugin-spec
	"nvim-telescope/telescope.nvim", branch = "0.1.x", -- optional branch lock
	dependencies = {
		{ "nvim-lua/plenary.nvim" } -- these can also have their own plugin file
	},
	cmd = { "Telescope" }, -- lazy loads on these commands
}

function M.config()
	local telescope = require("telescope")
	telescope.setup({})
end

-- Lazy loads on these mappings
M.keys = {
	---MAPPING------COMMAND---------------------------MODE-----DESCRIPTION-----------------
	{ "<leader>ff", "<cmd>:Telescope find_files<CR>", { "n" }, desc = "Telescope files"   },
	{ "<leader>fg", "<cmd>:Telescope live_grep<CR>" , { "n" }, desc = "Telescope grep"    },
	{ "<leader>fb", "<cmd>:Telescope buffers<CR>"   , { "n" }, desc = "Telescope buffers" },
	{ "<leader>fh", "<cmd>:Telescope help_tags<CR>" , { "n" }, desc = "Telescope help"    },
}

return M
