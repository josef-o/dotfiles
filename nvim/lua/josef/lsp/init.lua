local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  print("lspconfig not ok")
  return
end

require "josef.lsp.lsp-installer"
require("josef.lsp.handlers").setup()
