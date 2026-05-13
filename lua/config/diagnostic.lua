--- @param diagnostic? vim.Diagnostic
--- @param bufnr integer
-- local function on_jump(diagnostic, bufnr)
--   if not diagnostic then return end
--
--   vim.diagnostic.set(
--     diagnostic.namespace,
--     bufnr,
--     { diagnostic },
--     { virtual_lines = { current_line = true } }
--   )
-- end

--vim.api.nvim_create_autocmd('CursorMoved', {
--  callback = function()
--    vim.diagnostic.show()
--  end
--})
--
--vim.api.nvim_create_autocmd('CursorHold', {
--  callback = function()
--    vim.diagnostic.show()
--  end
--})

vim.diagnostic.config(
  {
    --   jump = { on_jump = on_jump },
    virtual_text = true,
    underline = false,
    virtual_lines = false,
    signs = true,
    update_in_insert = true,
  }
)
