vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Pick
vim.keymap.set(
  'n', '<leader>ff', '<Cmd>Pick files<CR>', { desc = 'Find File' }
)
vim.keymap.set(
  'n', '<leader>fg', '<Cmd>Pick grep_live<CR>', { desc = 'Find Grep' }
)
vim.keymap.set(
  'n', '<leader>t', '<Cmd>Pick buffers<CR>', { desc = 'Pick Tab' }
)
vim.keymap.set(
  'n', '<leader>fr', '<Cmd>Pick resume<CR>', { desc = 'Find Resume' }
)
vim.keymap.set(
  'n', '<leader>fh', '<Cmd>Pick help<CR>', { desc = 'Find Help' }
)
-- Sessions
vim.keymap.set(
  'n', '<leader>sr', '<Cmd>lua MiniSessions.restart()<CR>', { desc = 'Restart' }
)
-- Files
vim.keymap.set(
  'n', '<leader>e', '<Cmd>Oil<CR>', { desc = 'Oil' }
)
-- Diagnostics
vim.keymap.set(
  'n', '<leader>df', '<Cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Diagnostics' }
)
-- Buffers
vim.keymap.set(
  'n', '<leader><leader>d', '<Cmd>bdelete<CR>', { desc = 'Buffer Delete' }
)
-- Windows
vim.keymap.set(
  'n', '<leader><leader>c', '<Cmd>close<CR>', { desc = 'Window Close' }
)
-- Libre Translate
vim.keymap.set(
  'v', 'gt', ':LibreTranslate<CR>', { desc = 'LibreTranslate' }
)
vim.keymap.set(
  'v', 'gT', ':LibreTranslate --alts<CR>', { desc = 'LibreTranslate + Alternatives' }
)
-- LSP
vim.keymap.set(
  'n', '<leader>lf', '<Cmd>lua vim.lsp.buf.format()<CR>', { desc = 'Format' }
)
vim.keymap.set(
  'n', '<leader>ls', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', { desc = 'Signature' }
)
vim.keymap.set(
  'n', '<leader>la', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { desc = 'Action' }
)
vim.keymap.set(
  'n', '<leader>ln', '<Cmd>lua vim.lsp.buf.rename()<CR>', { desc = 'Rename' }
)
vim.keymap.set(
  'n', '<leader>ll', '<Cmd>lua vim.lsp.buf.codelens()<CR>', { desc = 'Codelens' }
)
vim.keymap.set(
  'n', '<leader>lc', '<Cmd>lua vim.lsp.buf.codelens()<CR>', { desc = 'Codelens' }
)
