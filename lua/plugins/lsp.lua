return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- vim.opt.completeopt:append('fuzzy')
      vim.lsp.inlay_hint.enable()
      vim.lsp.completion.enable()
      vim.lsp.enable({ 'lua_ls', 'nixd', 'bashls' })
    end,
  },
}
