return {
  {
    "tinted-theming/tinted-nvim",
    priority = 1000,
    lazy = false,
    opts = {
      default_scheme = "base16-darkmoss",
      -- compile = true,                   -- optional: precompile for faster startup
      ui = { dim_inactive = true, },
      highlights = {
        overrides = function(palette)
          return {
            -- NormalFloat = { cterm = { dim } },
            BufferCurrentTarget = {
              fg = palette.base08,
              bg = palette.base00
            },
            BufferInactiveTarget = {
              fg = palette.base08,
            },
            BufferCurrent = {
              bg = palette.base00
            },
            BufferCurrentMod = {
              bg = palette.base00
            },
            BufferCurrentModBtn = {
              fg = palette.base09,
              bg = palette.base00
            }
          }
        end
      }
    },
  }
}
