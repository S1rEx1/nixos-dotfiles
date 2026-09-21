vim.keymap.set("n", "<leader>e", "<Cmd>Explore<CR>")

local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader><leader>", fzf.files)
vim.keymap.set("n", "<leader>/", fzf.live_grep)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "==", "gg=G")

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set("n", "<Leader>fo", ":lua vim.lsp.buf.format()<CR>", opts)

vim.keymap.set('n', '<leader>i', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<leader>i', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
