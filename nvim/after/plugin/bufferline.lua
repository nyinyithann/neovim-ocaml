local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

vim.opt.termguicolors = true

bufferline.setup({
  options = {
    mode = "buffers",
    separator_style = "thin",
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    show_buffer_icons = true,
    show_buffer_default_icon = true,
    show_close_icon = false,
    show_tap_indicators = true,
    color_icons = true,
    diagnostics = false,
  },
  offsets = {
    {
        filetype = "NvimTree",
        text = function()
          return vim.fn.getcwd()
        end,
        highlight = "Directory",
        text_align = "center",
        padding = 4
    }
  }
})

vim.keymap.set("n", "<leader>bc", "<Cmd>BufferLinePickClose<CR>", {})
vim.keymap.set("n", "<leader>bp", "<Cmd>BufferLinePick<CR>", {})
vim.keymap.set("n", "<leader>bcr", "<Cmd>BufferLineCloseRight<CR>", {})
vim.keymap.set("n", "<leader>bcl", "<Cmd>BufferLineCloseLeft<CR>", {})
vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
