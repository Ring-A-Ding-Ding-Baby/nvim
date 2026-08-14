return { {
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>d",
      "",
      desc = "+Diagnostics",
    },
    {
      "<leader>dD",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics Global",
    },
    {
      "<leader>dd",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics",
    },
    {
      "<leader>ds",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols",
    },
    {
      "<leader>dl",
      "<cmd>Trouble lsp toggle focus=false win.position=bottom<cr>",
      desc = "LSP Definitions/references/...",
    },
    {
      "<leader>dL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List",
    },
    {
      "<leader>dQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List",
    },

  },
  opts = {
    modes = {
      symbols = {
        win = { position = "top" }
      }
    }
  }
} }
