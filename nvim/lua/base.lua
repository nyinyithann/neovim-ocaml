-- use space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- set vim.opt alias
local set = vim.opt

--***** moving around, searching and patterns ****--
set.incsearch = true  		-- show match for partly typed search command
set.ignorecase = true		-- ignore case when using a search pattern
set.smartcase = true		-- override 'ignorecase' when pattern has upper case characters

--***** displaying text *****--
set.wrap = false		    -- long lines wrap
set.cmdheight = 1		    -- number of lines used for the command line
set.number = true		    -- show the line number for each line 
set.scrolloff = 10		    -- number of screen lines to show around the cursor
set.breakindent = true      -- preserve indentation in wrapped text
set.sidescroll = 1          -- minimal number of columns to scroll horizontally

--***** syntax, highlighting and spelling *****--
set.background = "dark"		-- "dark" or "light"; the background color brightness
set.hlsearch = false		    -- highlight all matches for the last used search pattern
set.cursorline = true		-- highlight the screen line of the cursor
set.termguicolors = true	-- use GUI colors for the terminal

--***** windows *****--
set.splitright = true 		-- a new window is put right of the current one

--***** terminal *****--
set.title = true		    -- show info in the window title

--***** messages and info *****--
set.showcmd = true		    -- show (partial) command keys in the status line
set.showmode = true		    -- display the current mode in the status line
set.confirm = true		    -- start a dialog when a command fails

--***** tabs and indenting *****--
set.autoindent = true		-- automatically set the indent of a new line
set.smartindent = true		-- do clever autoindenting
set.tabstop = 4 		    -- number of spaces a <Tab> in the text stands for
set.shiftwidth = 4		    -- number of spaces used for each step of (auto)indent
set.backspace = {"indent", "eol", "start"} -- specifies what <BS>, CTRL-w, etc. can do in Insert mode 
set.expandtab = true		-- expand <Tab> to spaces in Insert mode

--***** selecting text *****--
set.clipboard:prepend { "unnamedplus" }  -- to put selected text on the clipboard


vim.g.gruvbox_material_background = 'medium'
--***** calling vim script because there are still things that can't be done in Lua *****--
vim.cmd [[
syntax enable
filetype plugin indent on          
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank()
augroup end
colorscheme nordfox
]]

--***** hiding ~ that indicates filler lines *****--
set.fillchars = "eob: " 
