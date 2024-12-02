---@diagnostic disable: undefined-global unused-local
local function Match(_, parent)
	return parent.snippet.env.POSTFIX_MATCH
end
return {
	postfix("~bt", fmt([=[[{}{}]{}]=], { f(Match), i(0), i(1) })),
	postfix("~pt", fmt([[({}{}){}]], { f(Match), i(0), i(1) })),
	postfix("~bc", fmt([[{<><>}<>]], { f(Match), i(0), i(1) }, { delimiters = "<>" })),
	postfix("~lamda", fmt([[function({}) return {}{} end]], { i(0), f(Match), i(1) })),
	postfix("~nil", fmt([[if {}~=nil then {} end]], { f(Match), i(1) })),
	postfix("~no", fmt([[if {}==nil then {} end]], { f(Match), i(1) })),
	postfix("~noval", fmt([[if {}==nil then {}={} end]], { f(Match), f(Match), i(1) })),
}
