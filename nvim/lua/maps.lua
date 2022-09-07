local keymap = vim.keymap.set

keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
--*********** editing Text **********--
-- delete text with 'x' without changing the internal register
keymap({ 'n', 'x' }, 'x', '"_x')

-- select all
keymap("n", "<C-a>", ":keepjumps normal! ggVG<cr>")

-- save with ctrl + s  test
keymap("n", "<C-s>", "<C-c>:update<CR>")
keymap("v", "<C-s>", "<C-c>:update<CR>")
keymap("i", "<C-s>", "<C-o>:update<CR>")

-- By pressing ctrl+r in visual mode, you will be prompted to enter text to replace with.
-- Press enter and then confirm each change you agree with y or decline with n.
keymap("v", "<C-r>", "hy:%s/<C-r>h//gc<left><left><left>")

-- insert a new line without leaving normal mode
keymap("n", "<space>no", "o<Esc>3\"_D")
keymap("n", "<space>nO", "O<Esc>3\"_D")

-- indent all
keymap("n", "<C-]>", ":keepjumps normal! gg=G<Cr>")

-- move text up and down
keymap("n", "mj", "<Esc>:m .+1<CR>==")
keymap("n", "mk", "<Esc>:m .-2<CR>==")

--*********** buffer **********--
-- a new buffer
keymap("n", "<leader>new", ":new<cr>")

-- close the current buffer and move to the previous one
keymap("n", "<space>bq", ":bp <bar> bd #<cr>")

--*********** windows **********--
-- navigate windows
keymap("n", "<space>h", "<c-w><c-h>")
keymap("n", "<space>j", "<c-w><c-j>")
keymap("n", "<space>k", "<c-w><c-k>")
keymap("n", "<space>l", "<c-w><c-l>")

-- split windows
keymap("n", ",h", ":split<cr>")
keymap("n", ",v", ":vsplit<cr>")

-- resize windows
keymap("n", "<Left>", ":vertical resize +1<CR>")
keymap("n", "<Right>", ":vertical resize -1<CR>")
keymap("n", "<Down>", ":resize +1<CR>")
keymap("n", "<Up>", ":resize -1<CR>")

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>")
keymap("n", "<S-h>", ":bprevious<CR>")

--*********** misc **********--
-- go into normal mode by pressing jk in insert and terminal mode
keymap("i", "jk", "<esc>")
keymap("t", "jk", "<C-\\><C-n>")

-- reload config without closing and reopening nvim
keymap("n", "<C-s><C-o>", ":so%<CR>")

-- remove all trailing whitespace by pressing F5
keymap("n", "<C-c><C-c>", [[:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>]])

-- Better indent
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>")

-- Open autocomplete popup 
keymap("i", "<C-space>", "<C-x><C-o>")
