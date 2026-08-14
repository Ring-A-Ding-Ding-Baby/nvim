return {
  {
    dir = vim.uv.fs_readlink(vim.fs.normalize("~/.local/share/nvim/lazy/blink.cmp")),
    dependencies = {
      'rafamadriz/friendly-snippets',
    },
    build = function()
      require('blink.cmp').build():pwait()
    end,

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = { preset = 'default' },
      completion = { documentation = { auto_show = true } },
      sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
      fuzzy = { implementation = "rust" }
    },
  },
  {
    lazy = false,
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.inlay_hint.enable()
      vim.lsp.completion.enable()
      vim.lsp.inline_completion.enable()
      vim.lsp.enable({ 'lua_ls', 'nixd', 'bashls', 'kotlin_language_server' })
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          local buf = args.buf

          if client.name == "jdtls" or client.name == 'rust-analyzer' then
            local neotest = require 'neotest'
            vim.keymap.set("n", "<leader>T", "", { desc = "+ Tests" })
            vim.keymap.set("n", "<leader>Tm", function()
              neotest.run.run()
              neotest.summary.open()
            end, { desc = "Run Current Method" })
            vim.keymap.set("n", "<leader>TM",
              function()
                neotest.run.run({ strategy = "dap" })
              end, { desc = "Debug Current Method" })
            vim.keymap.set("n", "<leader>Tc", function()
              neotest.run.run(vim.fn.expand("%"))
              neotest.summary.open()
            end, { desc = "Run Current Class" })
            vim.keymap.set("n", "<leader>TC",
              function()
                neotest.run.run({ vim.fn.expand("%"), strategy = "dap" })
              end, { desc = 'Debug Current Class' })
            vim.keymap.set("n", "<leader>Ta", function()
              neotest.run.run(vim.fn.getcwd())
              neotest.summary.open()
            end, { desc = 'Run All Tests' })
            vim.keymap.set("n", '<leader>TA', function()
              neotest.run.run({ vim.fn.getcwd(), strategy = "dap" })
            end, { desc = 'Debug All Tests' })
            vim.keymap.set("n", '<leader>Tl', function()
              neotest.run.run_last()
              neotest.summary.open()
            end, { desc = "Last Run" })
            vim.keymap.set("n", '<leader>TL', '<cmd>lua require("neotest").run.run_last({strategy = "dap"})<cr>',
              { desc = 'Last Debug' })
            vim.keymap.set("n", '<leader>TO', '<cmd>Neotest output-panel<cr>', { desc = 'View Output Panel' })
            vim.keymap.set("n", '<leader>To', '<cmd>Neotest output<cr>', { desc = 'View Last Output Float' })
            vim.keymap.set("n", '<leader>Ts', '<cmd>Neotest summary<cr>', { desc = 'View Summary' })
          end
          if client.name == 'spring-boot' then -- temporary fix
            client.server_capabilities.inlayHintProvider = false
          end
          if client.name == 'jdtls' then
            vim.keymap.set("n", "<leader>r", "", { desc = "+Java Refactor" })
            vim.keymap.set("n", "<leader>rv", "<cmd>JavaRefactorExtractVariable<cr>", { desc = "Extract Variable" })
            vim.keymap.set("n", "<leader>rV", "<cmd>JavaRefactorExtractVariableAllOccurrence<cr>",
              { desc = "Extract Variable all occurrence" })
            vim.keymap.set("n", "<leader>rc", "<cmd>JavaRefactorExtractConstant<cr>", { desc = "Extract Constant" })
            vim.keymap.set("n", "<leader>rf", "<cmd>JavaRefactorExtractField<cr>", { desc = "Extract Field" })
            vim.keymap.set("n", "<leader>rm", "<cmd>JavaRefactorExtractMethod<cr>", { desc = "Extract Method" })

            vim.keymap.set("n", "<leader>R", "", { desc = "+Java Runners" })
            vim.keymap.set("n", "<leader>Rm", "<cmd>JavaRunnerRunMain<cr>", { desc = "Run Main" })
            vim.keymap.set("n", "<leader>Rs", "<cmd>JavaRunnerStopMain<cr>", { desc = "Stop Main" })
            vim.keymap.set("n", "<leader>RL", "<cmd>JavaRunnerSwitchLogs<cr>", { desc = "Switch Logs" })
            vim.keymap.set("n", "<leader>Rl", "<cmd>JavaRunnerToggleLogs<cr>", { desc = "Toggle Logs" })
          end
        end
      })
    end,
  },
}
