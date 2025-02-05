local function foo(x)
  if x == nil then
    return 0  -- Or handle it appropriately, e.g., return a default value
  end
  return x + 1
end

local function bar()
  local result = foo(nil)
  print(result) -- Prints 0
end

bar()

--Alternative solution using pcall for error handling
local function bar2()
    local success, result = pcall(foo, nil)
    if success then
        print("Function executed successfully: ", result)
    else
        print("Error: ", result)
    end
end
bar2() 