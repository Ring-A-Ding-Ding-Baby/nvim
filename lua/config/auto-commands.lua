vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    vim.lsp.buf.format()
  end
})
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'java', 'lua', 'js', 'nix' },
  callback = function() vim.treesitter.start() end,
})
