local status, coffee = pcall(require, "catppuccin")
if (not status) then return end

vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
coffee.setup({
    integration = {
        nvimtree = {
            enabled = true,
            show_root = false, -- makes the root folder not transparent
            transparent_panel = true, -- make the panel transparent
        },
    },
})

require("bufferline").setup { highlights = require("catppuccin.groups.integrations.bufferline").get() }
