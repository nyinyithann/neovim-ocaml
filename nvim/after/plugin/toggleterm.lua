local status, toggleterm = pcall(require, "toggleterm")
if (not status) then return end

toggleterm.setup({
    float_opts = {
        -- border = 'single' | 'double' | 'shadow' | 'curved' 
        border = "single",
        -- like `size`, width and height can be a number or function which is passed the current terminal
        width = function (term)
        if term.direction == "horizontal" then 
            return 20
        elseif term.direction == "vertical" then 
            return vim.o.columns * 0.8
        end
        end,
        height = 30,
        winblend = 3
    }
})

function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal  = require('toggleterm.terminal').Terminal
local utop = Terminal:new({ cmd = "utop", hidden = true })

function _utop_toggle()
  utop:toggle()
end

vim.keymap.set("n", "<C-p>", "<Cmd>ToggleTerm<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>utop", "<cmd>lua _utop_toggle()<CR>", {noremap = true, silent = true})
