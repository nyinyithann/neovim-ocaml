local status, packer = pcall(require, "packer")
if (not status) then
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- packer can manage itself!
    use "wbthomason/packer.nvim"

    -- nvim-tree file explorer
    use {
        "kyazdani42/nvim-tree.lua",
        requires = { "kyazdani42/nvim-web-devicons" }
    }

    -- lsp config
    use  { "neovim/nvim-lspconfig", tag = "v0.1.3" }

    -- nightfox color scheme
    use "EdenEast/nightfox.nvim"
    use "sainnhe/gruvbox-material"
    use "folke/tokyonight.nvim"

    -- autocompletion
    use { "hrsh7th/nvim-cmp", tag = "v0.0.1" }
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"

    -- symbol
    use "simrat39/symbols-outline.nvim" 

    -- statusbar
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }

    -- bufferline
    use { "akinsho/nvim-bufferline.lua", tag = "v2.7.0" }

    -- commenting 
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    -- treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
    }

    -- terminal
    use {"akinsho/toggleterm.nvim", tag = "v2.*" }

    -- telescope
    --    use {
    --        "nvim-telescope/telescope.nvim", tag = "0.1.0",
    --        requires = { {"nvim-lua/plenary.nvim"} }
    --    }


    -- sorter to improve telescope sorting
    -- Needs CMake, and the Microsoft C++ Build Tools on Windows
    -- Needs CMake, make, and GCC or Clang on Linux and MacOS
    -- use {"nvim-telescope/telescope-fzf-native.nvim", run = "make" }
end)

