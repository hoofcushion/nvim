---@diagnostic disable: undefined-global unused-local
return {
	s(
		"ilblock",
		fmt(
			[[
(function({})
	{}
end)({}){}
]],
			{ i(0), i(1), i(2), i(3) }
		)
	),
	s(
		"ilclosure",
		fmt(
			[[
(function({})
	{}
	return function()
		{}
	end
end)({}){}
]],
			{ i(3), i(1), i(2), i(3), i(4) }
		)
	),
}
