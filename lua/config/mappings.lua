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
vim.keymap.set('n', '<leader>n', '<Cmd>lua MiniNotify.show_history()<CR>',
  { desc = 'Toggle' })
-- DAP
vim.keymap.set('n', '<F3>', function()
  require "osv".launch({ port = 8086 })
end, { noremap = true })

vim.keymap.set('n', '<F4>', function()
  require "osv".stop()
end, { noremap = true })

vim.keymap.set('n', '<F5>', '<Cmd>DapToggleBreakpoint<CR>', { desc = 'Toggle' })
vim.keymap.set('n', '<C-5>', function()
  local input = vim.fn.input('')
  require 'dap'.toggle_breakpoint(input)
end, { desc = 'Toggle' })
vim.keymap.set('n', '<F9>', '<Cmd>DapStepOut<CR>', { desc = 'Toggle' })
vim.keymap.set('n', '<F10>', '<Cmd>DapStepOver<CR>', { desc = 'Toggle' })
vim.keymap.set('n', '<F11>', '<Cmd>DapContinue<CR>', { desc = 'Toggle' })
vim.keymap.set('n', '<F12>', '<Cmd>DapStepInto<CR>', { desc = 'Toggle' })

-- Buffers
vim.keymap.set('n', '<leader><leader>', '', { desc = '  +META' })
vim.keymap.set('n', '<leader><leader>t', '<Cmd>ToggleTerm<CR>', { desc = '' })
vim.keymap.set('n', '<leader><leader>P', '<Cmd>BufferPickDelete<CR>', { desc = 'Buf Pick Delete' })
vim.keymap.set('n', '<leader><leader>p', '<Cmd>BufferPick<CR>', { desc = 'Buf Pick' })
vim.keymap.set('n', '<leader><leader>c', '<Cmd>BufferClose<CR>', { desc = 'Buf Close' })
vim.keymap.set('n', '<leader><leader>C', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', { desc = 'Buf Close !Active' })
vim.keymap.set('n', '[b', '<Cmd>BufferPrevious<CR>', { desc = 'Buffer Previous' })
vim.keymap.set('n', ']b', '<Cmd>BufferNext<CR>', { desc = 'Buffer Next' })
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

-- REFACTORING
vim.keymap.set('n', '<leader>ln', '<Cmd>lua vim.lsp.buf.rename()<CR>', { desc = 'Rename' })
-- GOTO
vim.keymap.set('n', '<leader>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { desc = 'Definition' })
vim.keymap.set('n', '<leader>gr', '<Cmd>lua vim.lsp.buf.references()<CR>', { desc = 'References' })
vim.keymap.set('n', '<leader>lS', '<Cmd>lua vim.lsp.buf.document_symbol()<CR>', { desc = 'Symbols' })
vim.keymap.set('n', '<leader>gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', { desc = 'Implementations' })
vim.keymap.set('n', '<leader>gh', '<Cmd>lua vim.lsp.buf.typehierarchy("subtypes")<CR>', { desc = 'Hierarchy Subtypes' })
vim.keymap.set('n', '<leader>gH', '<Cmd>lua vim.lsp.buf.typehierarchy("supertypes")<CR>',
  { desc = 'Hierarchy Supertypes' })
