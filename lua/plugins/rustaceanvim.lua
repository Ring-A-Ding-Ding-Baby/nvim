return { {
  'mrcjkb/rustaceanvim',
  version = '^9',
  lazy = false,
  init = function()
    vim.g.rustaceanvim = function()
      local cfg = require('rustaceanvim.config')
      local abs_path = vim.fs.abspath("~/.local/share/vscode/extensions/vadimcn.vscode-lldb/")
      return {
        dap = {
          adapter = cfg.get_codelldb_adapter(
            abs_path .. "adapter/codelldb",
            abs_path .. "lldb/lib/liblldb.so")
        }
      }
    end
  end
} }
