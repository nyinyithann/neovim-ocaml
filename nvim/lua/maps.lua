local keymap = vim.keymap

-- go into normal mode by pressing jk instead of Escape key 
keymap.set("i", "jk", "<esc>")

-- select all
keymap.set("n", "<C-a>", "ggVG")

-- navigate windows
keymap.set("n", "<leader>h", "<C-w><C-h>")
keymap.set("n", "<leader>j", "<C-w><C-j>")
keymap.set("n", "<leader>k", "<C-w><C-k>")
keymap.set("n", "<leader>l", "<C-w><C-l>")

