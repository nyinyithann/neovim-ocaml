local status, lsp = pcall(require, "lspconfig")
if (not status) then return end

local opts = { noremap=true, silent=true }
vim.keymap.set("n", "<space>d", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "gp", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "gl", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<C-l>", vim.diagnostic.setloclist, opts)

local on_attach = function(client, bufnr)
  vim.opt.signcolumn = "yes:1"
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts)
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
  vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set("n", "<space>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, bufopts)
  vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, bufopts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts)
  vim.keymap.set("n", "<space>f", vim.lsp.buf.formatting, bufopts)

  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

lsp.flow.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lsp.ocamllsp.setup ({
     cmd = { "ocamllsp" },
     on_attach = on_attach,
     filetypes = { "ocaml", "ocaml.menhir", "ocaml.interface", "ocaml.ocamllex", "reason", "dune" },
     capabilities = capabilities
})
