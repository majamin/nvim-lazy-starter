---------------------------------------------[[ Non-plugin maps ]]
-- Plugin maps go into `plugins/*` files 
-- (see lua/plugins/telescope.lua as an example)

local opts = { silent = true }
local expr_opts = { silent = true, expr = true }

vim.g.mapleader = " "

vim.keymap.set({ "n"      }, "x"        , '"_x') -- use the blackhole register for deletions
vim.keymap.set({ "n"      }, "<ESC>"    , ":noh<CR>", opts) -- turn off search highlight!
vim.keymap.set({ "n", "v" }, "<leader>p", '"0p',      opts, { desc = "Paste from yank register" })
vim.keymap.set({      "v" }, "<"        , "<gv",      opts, { desc = "Indent lines out" })
vim.keymap.set({      "v" }, ">"        , ">gv",      opts, { desc = "Indent lines in" })
