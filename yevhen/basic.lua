---- OPTIONS ----
local opt = vim.opt

-- line number
opt.number = true

-- tab and indentations
local tab_width = 4
opt.tabstop = tab_width 
opt.softtabstop = tab_width 
opt.shiftwidth = tab_width 
opt.expandtab = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursore line
-- opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"

