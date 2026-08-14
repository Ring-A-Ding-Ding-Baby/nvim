return {
  {
    'igorlfs/nvim-dap-view',
    dependencies = {
      'mfussenegger/nvim-dap'
    },
    config = function(_, opts)
      local dap, dapview = require('dap'), require('dap-view')
      -- require('dap').defaults.fallback.switchbuf = 'usetab,uselast,useopen'
      dapview.setup(opts)
      dap.listeners.before.attach.dapui_config = function()
        dapview.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapview.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapview.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapview.close()
      end
    end
  },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()

    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = true,
      -- highlight_alternate = true,
      auto_hide = 1,
      maximum_padding = 0,
      icons = {
        button = false,
        separator = {
          left = '',
          right = '',
        }
      }
    },
  },
  -- {
  --   'nanozuki/tabby.nvim',
  --   ---@type TabbyConfig
  --   opts = {
  --     -- configs...
  --   },
  -- },
  { 'MunifTanjim/nui.nvim' },
  {
    dir = '~/gadget.nvim',
  },
  {
    'Bekaboo/dropbar.nvim',
    -- optional, but required for fuzzy finder support
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    },
    -- config = function()
    --   local dropbar_api = require('dropbar.api')
    --   -- vim.keymap.set('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
    --   -- vim.keymap.set('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
    --   -- vim.keymap.set('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
    -- end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    opts = {
      options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        theme = 'auto',
      }
    }
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        '<leader>?',
        function()
          require('which-key').show({ global = false })
        end,
        desc = 'Buffer Local Keymaps (which-key)',
      },
    },
  },
  {
    'rcarriga/nvim-dap-ui',
    dependencies = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    opts = {
      floating = {
        border = 'none'
      },
    },
  },
}
