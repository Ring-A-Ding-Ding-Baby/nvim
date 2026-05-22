function r(name, opts)
  return {
    'nvim-mini/mini.' .. name,
    version = false,
    config = function()
      require('mini.' .. name).setup(opts)
    end,
  }
end

return {
  {
    'nvim-mini/mini.clue',
    version = false,
    config = function()
      local miniclue = require('mini.clue')
      miniclue.setup({
        window = {
          config = { anchor = 'SE', width = 'auto', row = 'auto', col = 'auto' },
        },
        triggers = {
          -- Leader triggers
          { mode = { 'n', 'x' }, keys = '<Leader>' },

          -- `[` and `]` keys
          { mode = 'n',          keys = '[' },
          { mode = 'n',          keys = ']' },

          -- Built-in completion
          { mode = 'i',          keys = '<C-x>' },

          -- `g` key
          { mode = { 'n', 'x' }, keys = 'g' },

          -- Marks
          { mode = { 'n', 'x' }, keys = "'" },
          { mode = { 'n', 'x' }, keys = '`' },

          -- Registers
          { mode = { 'n', 'x' }, keys = '"' },
          { mode = { 'i', 'c' }, keys = '<C-r>' },

          -- Window commands
          { mode = 'n',          keys = '<C-w>' },

          -- `z` key
          { mode = { 'n', 'x' }, keys = 'z' },
        },

        clues = {
          -- Enhance this by adding descriptions for <Leader> mapping groups
          miniclue.gen_clues.square_brackets(),
          miniclue.gen_clues.builtin_completion(),
          miniclue.gen_clues.g(),
          miniclue.gen_clues.marks(),
          miniclue.gen_clues.registers(),
          miniclue.gen_clues.windows(),
          miniclue.gen_clues.z(),
        },
      })
    end,
  },
  r('tabline', { show_icons = true }),
  r('statusline'),
  r('completion'),
  r('animate'),
  r('pick'),
  r('notify'),
  r('tabline'),
  r('bufremove'),
  r('starter'),
  r('icons'),
  r('cursorword'),
  r('sessions'),
  {
    'nvim-mini/mini-git',
    version = false,
    config = function()
      require('mini.git').setup(opts)
    end,
  }

}
