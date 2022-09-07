-- use space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local set = vim.opt

set.incsearch = true -- show match for partly typed search command
set.ignorecase = true -- ignore case when using a search pattern
set.smartcase = true -- override 'ignorecase' when pattern has upper case characters

set.wrap = false -- long lines wrap
set.cmdheight = 1 -- number of lines used for the command line
set.number = true -- show the line number for each line
set.scrolloff = 10 -- number of screen lines to show around the cursor
set.breakindent = true -- preserve indentation in wrapped text
set.sidescroll = 1 -- minimal number of columns to scroll horizontally

set.background = "dark" -- "dark" or "light"; the background color brightness
set.hlsearch = false -- highlight all matches for the last used search pattern
set.cursorline = true -- highlight the screen line of the cursor
set.termguicolors = true -- use GUI colors for the terminal

set.splitright = true -- verticallly-split window is put right of the current one
set.splitbelow = true -- horizontally-split window is put below of the current one

set.title = true -- show info in the window title

set.showcmd = true -- show (partial) command keys in the status line
set.showmode = true -- display the current mode in the status line
set.confirm = true -- start a dialog when a command fails

set.autoindent = true -- automatically set the indent of a new line
set.smartindent = true -- do clever autoindenting
set.tabstop = 4 -- number of spaces a <Tab> in the text stands for
set.shiftwidth = 4 -- number of spaces used for each step of (auto)indent
set.backspace = { "indent", "eol", "start" } -- specifies what <BS>, CTRL-w, etc. can do in Insert mode
set.expandtab = true -- expand <Tab> to spaces in Insert mode

set.clipboard:prepend { "unnamedplus" } -- to put selected text on the clipboard
set.fillchars.eob = " " -- hiding ~ that indicates filler lines
set.timeout = true
set.timeoutlen = 600 -- time to wait for a mapped sequence to complete (in milliseconds) default is 1000
set.undofile = true -- enable persistent undo
set.updatetime = 400 -- faster completion (4000ms default)
set.signcolumn = "yes:1" -- always show the sign column,

vim.cmd "set whichwrap+=<,>,[,],h,l" -- wrap text at both left and right
vim.cmd [[set iskeyword+=-]] -- ask vim to treat '-' like a regular word character that should be skipped over by things like w or b

set.completeopt = { "menuone", "menu", "noselect", "preview" } -- mainly for cmp plugin
set.pumblend = 0
