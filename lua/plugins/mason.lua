return {
  {
    -- priority = 900,
    'jay-babu/mason-nvim-dap.nvim',

    dependencies = {
      "mason-org/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    -- lazy = false,
    opts = {
      ensure_installed = { "javadbg", "javatest" },
      automatic_installation = true,
      handlers = {
      },
    }
  },
  {
    "mason-org/mason.nvim",
    opts = {}
  }
}
