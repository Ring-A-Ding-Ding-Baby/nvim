return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- vim.opt.completeopt:append('fuzzy')
      vim.lsp.inlay_hint.enable()
      vim.lsp.completion.enable()
      vim.lsp.inline_completion.enable()
      vim.lsp.enable({ 'spring-boot', 'lua_ls', 'nixd', 'bashls', 'jdtls', 'kotlin_language_server' })
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          local buf = args.buf
          if client.name == "jdtls" then
            vim.keymap.set("n", "<leader>r", "", { desc = "+Java Runners" })
            vim.keymap.set("n", "<leader>rm", "<cmd>JavaRunnerRunMain<cr>", { desc = "Run Main" })
            vim.keymap.set("n", "<leader>rs", "<cmd>JavaRunnerStopMain<cr>", { desc = "Stop Main" })
            vim.keymap.set("n", "<leader>rL", "<cmd>JavaRunnerSwitchLogs<cr>", { desc = "Switch Logs" })
            vim.keymap.set("n", "<leader>rl", "<cmd>JavaRunnerToggleLogs<cr>", { desc = "Toggle Logs" })

            vim.keymap.set("n", "<leader>t", "", { desc = "+Java Tests" })
            vim.keymap.set("n", "<leader>tm", "<cmd>JavaTestRunCurrentMethod<cr>", { desc = "Run Current Method" })
            vim.keymap.set("n", "<leader>tM", "<cmd>JavaTestDebugCurrentMethod<cr>", { desc = "Debug Current Method" })
            vim.keymap.set("n", "<leader>tc", "<cmd>JavaTestRunCurrentClass<cr>", { desc = "Run Current Class" })
            vim.keymap.set("n", "<leader>tC", "<cmd>JavaTestDebugCurrentClass<cr>", { desc = "Debug Current Class" })
            vim.keymap.set("n", "<leader>ta", "<cmd>JavaTestRunAllTests<cr>", { desc = "Run All Tests" })
            vim.keymap.set("n", "<leader>tA", "<cmd>JavaTestDebugAllTests<cr>", { desc = "Debug All Tests" })
            vim.keymap.set("n", "<leader>tl", "<cmd>JavaTestViewLastReport<cr>", { desc = "View Last Report" })
          end
        end

      })
    end,
  },
}
