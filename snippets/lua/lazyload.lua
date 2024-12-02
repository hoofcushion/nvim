---@diagnostic disable: undefined-global unused-local
local ret1=function(args) return args[1][1] end
return {
 s("lazy",fmt(
  [[<>; <>=setmetatable({},{__index=function(_,k) <>=require("<>")return <>[k] end})]],
  {i(1),f(ret1,{1}),f(ret1,{1}),i(0),f(ret1,{1})},
  {delimiters="<>"}
 )),
}
