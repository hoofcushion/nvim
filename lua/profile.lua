if vim.env.PROF then
 local snacks=vim.fn.stdpath("data").."/lazy/snacks.nvim"
 if vim.fn.filereadable(snacks) then
  vim.opt.rtp:append(snacks)
  require("snacks.profiler").startup({
   thresholds={
    time={0,10},
    pct={0,20},
    count={0,100},
   },
   startup={
    event="SafeState",
   },
  })
 end
end
