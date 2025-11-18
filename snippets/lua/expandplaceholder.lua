---@diagnostic disable: undefined-global unused-local
local insert=table.insert
local function snipmaker(pattern)
 pattern=pattern:gsub("%%","%%%%")
 return function(contents,_,args)
  if args==nil then
   args={}
  end
  local _,count=string.gsub(contents[1][1],pattern,"")
  local nodes={}
  if count>0 then
   insert(nodes,t(","))
   for j=1,count do
    local text=args[j] or ("arg"..tostring(j))
    local function watcher(references)
     args[j]=references[1][1]
    end
    local key="FormatArg"..tostring(j)
    insert(nodes,i(j,text,{key=key}))
    insert(nodes,f(watcher,{k(key)}))
    insert(nodes,t(","))
   end
   table.remove(nodes)
  end
  local snippets=sn(nil,nodes)
  snippets.old_state=args
  return snippets
 end
end
return {
 s(
  "sfm",
  fmt([[string.format("{}"{})]],{
   i(1,"",{key="FormatText"}),
   d(2,snipmaker("%"),{k("FormatText")}),
  })
 ),
}
