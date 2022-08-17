local status, tree = pcall(require, "nvim-tree")
if (not status) then return end

local lib = require "nvim-tree.lib"

-- [credit] https://github.com/alex-courtis/arch/blob/c91322f51c41c2ace04614eff3a37f13e5f22a24/config/nvim/lua/nvt.lua
local function cd_dot_cb(node)
  tree.change_dir(vim.fn.getcwd(-1))
  if node.name ~= ".." then
    lib.set_index_and_redraw(node.absolute_path)
  end
end

tree.setup({
  sort_by = "case_sensitive",
  open_on_setup = true,
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = ".", action = "cd_dot",	action_cb = cd_dot_cb, },
        { key = "v", action = "vsplit" },
        { key = "h", action = "split" },
      },
    },
  },
  filters = {
    -- hide .git folder
    custom = {"^\\.git$"}
  }
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>te", "<Cmd>NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>tf", "<Cmd>NvimTreeFocus<CR>", opts)
