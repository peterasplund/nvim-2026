local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.whichwrap = "b,s"

-- Disable mouse
o.mouse = ""

vim.opt.relativenumber = false
vim.opt.wrap = true
vim.g.snacks_animate = false
vim.cmd("colorscheme elflord")
