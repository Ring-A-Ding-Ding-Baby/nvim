function Inspect(opts)
  local target = opts.args
  local fn, err = load("return " .. target)
  if not fn then
    print("Err:" .. err)
  end
  local ok, result = pcall(fn())
  if not ok then
    print("Runtime Err:" .. result)
  end
  print(vim.inspect(result))
end
