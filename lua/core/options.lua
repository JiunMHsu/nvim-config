local global              = vim.g
local o                   = vim.o

-- Visual
o.conceallevel            = 0
o.cmdheight               = 1
o.pumheight               = 10
o.showmode                = false
-- o.showtabline    = 3
o.title                   = true
o.termguicolors           = true
o.number                  = true
o.relativenumber          = true
o.signcolumn              = 'yes'

-- Behavior
o.hlsearch                = false
o.ignorecase              = true
o.smartcase               = true
o.smarttab                = true
o.smartindent             = true
o.expandtab               = true
o.tabstop                 = 3
o.softtabstop             = 3
o.shiftwidth              = 3
o.mouse                   = 'a'

global.loaded_netrw       = 1
global.loaded_netrwPlugin = 1
