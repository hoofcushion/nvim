vim.loader.enable()
require("bootstrap")
require("profile")
require("lazy").setup({
 spec={
  {"hoofcushion/hc-nvim",dev=true,import="hc-nvim.export"},
 },
 dev={
  path=vim.fs.joinpath(vim.fn.stdpath("config"),"dev"),
  fallback=true,
 },
 -- profiling={
 --  loader=true,
 --  require=true,
 -- },
 default={
  lazy=true,
 },
 performance={
  cache={
   enable=true,
  },
 },
})
