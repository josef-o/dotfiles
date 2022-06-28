local group = vim.api.nvim_create_augroup("FileType fix", { clear = true })
-- autocommands
vim.api.nvim_create_autocmd('FileType', { command = "set formatoptions-=cro", group = group})

