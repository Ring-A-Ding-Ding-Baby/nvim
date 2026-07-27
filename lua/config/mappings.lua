vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set('n', '<leader>f', '', { desc = '+Find' })
vim.keymap.set('n', '<leader>ff', '<Cmd>Pick files<CR>', { desc = 'Find File' })
vim.keymap.set('n', '<leader>fg', '<Cmd>Pick grep_live<CR>', { desc = 'Find Grep' })
vim.keymap.set('n', '<leader>ft', '<Cmd>Pick buffers<CR>', { desc = 'Pick Tab' })
vim.keymap.set('n', '<leader>fr', '<Cmd>Pick resume<CR>', { desc = 'Find Resume' })
vim.keymap.set('n', '<leader>fh', '<Cmd>Pick help<CR>', { desc = 'Find Help' })
-- Sessions
vim.keymap.set('n', '<leader>s', '', { desc = '+Sessions' })
vim.keymap.set('n', '<leader>sr', '<Cmd>lua MiniSessions.restart()<CR>', { desc = 'Restart' })
-- Diagnostics
vim.keymap.set('n', '<leader>df', '<Cmd>lua vim.diagnostic.open_float()<CR>', { desc = 'Diagnostics' })
vim.keymap.set('n', '<leader>dt', '<Cmd>lua vim.diagnostic.enable(not vim.diagnostic.is_enabled())<CR>',
  { desc = 'Toggle' })
-- Buffers
vim.keymap.set('n', '<leader><leader>', '', { desc = '+META' })
vim.keymap.set('n', '<leader><leader>d', '<Cmd>BufferPickDelete<CR>', { desc = 'Buf Del' })
vim.keymap.set('n', '<leader><leader>D', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', { desc = 'Buf Del But CoP' })
-- Windows
vim.keymap.set('n', '<leader><leader>c', '<Cmd>close<CR>', { desc = 'Window Close' })
-- Libre Translate
vim.keymap.set('v', 'gt', ':LibreTranslate<CR>', { desc = 'LibreTranslate' })
vim.keymap.set('v', 'gT', ':LibreTranslate --alts<CR>', { desc = 'LibreTranslate + Alternatives' })
-- LSP
vim.keymap.set('n', '<leader>l', '', { desc = '+LSP' })
vim.keymap.set('n', '<leader>lf', '<Cmd>lua vim.lsp.buf.format()<CR>', { desc = 'Format' })
vim.keymap.set('n', '<leader>lt', '', { desc = '+Toggle' })
vim.keymap.set('n', '<leader>lti', '<Cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>',
  { desc = 'Hints' })
vim.keymap.set('n', '<leader>ls', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', { desc = 'Signature' })
vim.keymap.set('n', '<leader>la', '<Cmd>lua vim.lsp.buf.code_action()<CR>', { desc = 'Action' })
vim.keymap.set('n', '<leader>ln', '<Cmd>lua vim.lsp.buf.rename()<CR>', { desc = 'Rename' })
vim.keymap.set('n', '<leader>ll', '<Cmd>lua vim.lsp.buf.codelens()<CR>', { desc = 'Codelens' })
vim.keymap.set('n', '<leader>ld', '<Cmd>lua vim.lsp.buf.definition()<CR>', { desc = 'Definition' })
vim.keymap.set('n', '<leader>lr', '<Cmd>lua vim.lsp.buf.references()<CR>', { desc = 'References' })
vim.keymap.set('n', '<leader>lS', '<Cmd>lua vim.lsp.buf.document_symbol()<CR>', { desc = 'Symbols' })
vim.keymap.set('n', '<leader>li', '<Cmd>lua vim.lsp.buf.implementation()<CR>', { desc = 'Implementations' })
vim.keymap.set('n', '<leader>lh', '<Cmd>lua vim.lsp.buf.typehierarchy("subtypes")<CR>', { desc = 'Hierarchy Subtypes' })
vim.keymap.set('n', '<leader>lH', '<Cmd>lua vim.lsp.buf.typehierarchy("supertypes")<CR>',
  { desc = 'Hierarchy Supertypes' })
