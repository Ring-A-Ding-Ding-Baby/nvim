local SpecsBuilder = {
  plugin_specs = {
    {
      'nvim-mini/mini-git',
      version = false,
      config = function()
        require('mini.git').setup(opts)
      end,
    }
  }
}

local function get_spec(name, opts)
  return {
    'nvim-mini/mini.' .. name,
    version = false,
    config = function()
      require('mini.' .. name).setup(opts)
    end,
  }
end

function SpecsBuilder:build(plugin_list)
  for _, v in pairs(plugin_list) do
    table.insert(self.plugin_specs, get_spec(v))
  end
  return self.plugin_specs
end

return SpecsBuilder:build({ 'animate', 'pick', 'surround',
  'notify', 'sessions', 'diff', 'jump2d', 'ai' })
