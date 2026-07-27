function Builder:new(initial_plugin_list)
  self.li = initial_plugin_list
  return self
end

function Builder:add(plugin)
  table.insert(self.li, plugin)
  return self
end

function Builder:build()
  return self.li
end
