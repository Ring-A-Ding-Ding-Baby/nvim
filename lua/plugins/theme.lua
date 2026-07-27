return {
  {
    "tinted-theming/tinted-nvim",
    priority = 1000, -- load colorscheme early
    lazy = false,    -- apply on startup
    config = function(_, opts)
      local tint = require 'tinted-nvim'
      tint.setup(opts)
      local palette = tint.get_palette()
      vim.api.nvim_set_hl(0, "NormalFloat", {
        bg = palette.base01
      })
      vim.api.nvim_set_hl(0, "BufferTarget", {
        bg = palette.base08
      })
      vim.api.nvim_set_hl(0, "BufferCurrent", {
        bg = palette.base00
      })
    end,
    opts = {
      default_scheme = "base16-darkmoss", -- pick any bundled Base16/Base24
      compile = true,                     -- optional: precompile for faster startup
    },
  }
}
