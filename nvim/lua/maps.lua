local keymap = vim.keymap

--*********** editing Text **********--
-- select all
keymap.set("n", "<C-a>", "ggVG")

-- save with ctrl + s
keymap.set("n", "<C-s>", ":update<CR>")
keymap.set("v", "<C-s>", "<C-c>:update<CR>")
keymap.set("i", "<C-s>", "<C-o>:update<CR>")

-- By pressing ctrl+r in visual mode, you will be prompted to enter text to replace with. 
-- Press enter and then confirm each change you agree with y or decline with n.
keymap.set("v", "<C-r>", "hy:%s/<C-r>h//gc<left><left><left>")

-- insert a new line without leaving normal mode
keymap.set("n", "<leader>no", "o<Esc>0\"_D")
keymap.set("n", "<leader>nO", "O<Esc>0\"_D")

-- indent all
keymap.set("n", "<C-=>", "gg=G<Cr>")

--*********** buffer **********--
-- a new buffer
keymap.set("n", "<leader>new", ":new<cr>")
-- close the current buffer and move to the previous one
keymap.set("n", "<leader>bq", ":bp <bar> bd #<cr>")

--*********** windows **********--
-- navigate windows
keymap.set("n", "<leader>h", "<c-w><c-h>")
keymap.set("n", "<leader>j", "<c-w><c-j>")
keymap.set("n", "<leader>k", "<c-w><c-k>")
keymap.set("n", "<leader>l", "<c-w><c-l>")

-- split windows
keymap.set("n", ",h", ":split<cr>")
keymap.set("n", ",v", ":vsplit<cr>")

-- resize windows
keymap.set("n", "<leader><Right>", ":vertical resize +5<CR>")
keymap.set("n", "<leader><Left>", ":vertical resize -5<CR>")
keymap.set("n", "<leader><Up>", ":resize +5<CR>")
keymap.set("n", "<leader><Down>", ":resize -5<CR>")

--*********** misc **********--
-- go into normal mode by pressing jk instead of escape key 
keymap.set("i", "jk", "<esc>")

-- reload config
keymap.set("n", "<leader>load", ":so%<CR>")
