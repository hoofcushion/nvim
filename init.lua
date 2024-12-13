vim.loader.enable()
require("bootstrap")
require("lazy").setup({
	spec = {
		{ "hoofcushion/hc-nvim", dev = true, import = "hc-nvim.export" },
	},
	dev = {
		path = vim.fs.joinpath(vim.fn.stdpath("config"), "dev"),
		fallback = true,
	},
	profiling = {
		-- loader=true,
		-- require=true,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"2html_plugin",
				"bugreport",
				"compiler",
				"editorconfig",
				"filetype",
				"ftplugin",
				"getscript",
				"getscriptPlugin",
				"gzip",
				"logipat",
				"man",
				"matchit",
				"matchparen",
				"netrw",
				"netrwFileHandlers",
				"netrwPlugin",
				"netrwSettings",
				"nvim",
				"optwin",
				"osc52",
				"rplugin",
				"rrhelper",
				-- "shada",
				"spellfile",
				"spellfile_plugin",
				"synmenu",
				"syntax",
				"tar",
				"tarPlugin",
				"tohtml",
				"tutor",
				"vimball",
				"vimballPlugin",
				"zip",
				"zipPlugin",
			},
		},
	},
	default = {
		lazy = true,
	},
})
