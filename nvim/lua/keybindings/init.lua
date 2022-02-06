vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
