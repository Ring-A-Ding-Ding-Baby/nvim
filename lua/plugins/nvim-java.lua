return {
  {
    'nvim-java/nvim-java',
    -- dir = '~/nvim-java/',
    -- lazy = true,
    lazy = false,
    -- ft = 'java',
    config = function(_, opts)
      require('java').setup(opts)
      vim.lsp.enable('jdtls')
    end,
    opts = {
      checks = {
        nvim_version = true,        -- Check Neovim version
        nvim_jdtls_conflict = true, -- Check for nvim-jdtls conflict
      },
      jdtls = {
        version = '1.54.0',
        auto_install = true,
      },
      lombok = {
        enable = true,
        auto_install = true,
      },
      java_test = {
        enable = true,
        auto_install = true,
      },
      java_debug_adapter = {
        enable = true,
        auto_install = true,
      },
      spring_boot_tools = {
        enable = true,
        auto_install = true,
      },
      jdk = {
        auto_install = false,
      },
      log = {
        use_console = false,
        use_file = true,
        level = 'debug',
        log_file = vim.fn.stdpath('state') .. '/nvim-java.log',
        max_lines = 1000,
        show_location = false,
      },
    }
  }
}
