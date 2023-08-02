local global     = vim.g
local kmap       = vim.keymap

global.mapleader = ' '

-- General
kmap.set('n', '<leader>w', ':w<CR>')
kmap.set('n', '<leader>q', ':q<CR>')

kmap.set('n', 'j', 'h')
kmap.set('n', 'i', 'k')
kmap.set('n', 'k', 'j')
kmap.set('n', '<C-i>', 'i')

kmap.set('n', '<C-Right>', '<C-w><Right>')
kmap.set('n', '<C-Left>', '<C-w><Left>')


-- Nvim Tree
kmap.set('n', '<leader>,', ':NvimTreeToggle<CR>')

-- Telescope
