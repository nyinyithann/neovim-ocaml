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
    use  "neovim/nvim-lspconfig"

    -- nightfox color scheme
    use "EdenEast/nightfox.nvim"

    -- autocompletion
    use "hrsh7th/nvim-cmp" 
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    
    -- symbol
    use "simrat39/symbols-outline.nvim" 

    -- statusbar
   use {
        "nvim-lualine/lualine.nvim",
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- bufferline
    use 'akinsho/nvim-bufferline.lua'
end)

