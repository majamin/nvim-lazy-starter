local opts = { silent = true }
local expr_opts = { silent = true, expr = true }

vim.g.mapleader = " "

-- stylua: ignore start
vim.keymap.set({ "n"      }, "x"        , '"_x')
vim.keymap.set({ "n"      }, "<ESC>"    , ":noh<CR>", opts)
vim.keymap.set({ "n", "v" }, "<leader>p", '"0p',      opts, { desc = "Paste from yank register" })
vim.keymap.set({      "v" }, "<"        , "<gv",      opts, { desc = "Indent lines out" })
vim.keymap.set({      "v" }, ">"        , ">gv",      opts, { desc = "Indent lines in" })
-- stylua: ignore end
