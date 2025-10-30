-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Prevent unexpected behaviours
local opts = { noremap = true, silent = true }

-- [[ Set key maps ]]
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- clear HL on <esc>

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "h"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "l"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "k"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "j"<CR>')

-- Find and center
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Escape terminal mode easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>')

-- Move text up and down
vim.keymap.set('v', '<C-j>', ":m '<-2<CR>gv=gv", opts)
vim.keymap.set('v', '<C-k>', ":m '>+1<CR>gv=gv", opts)

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Toggle diagnostics
local diagnostics_active = true

vim.keymap.set('n', '<leader>do', function()
  diagnostics_active = not diagnostics_active

  if diagnostics_active then
    vim.diagnostic.enable(true)
  else
    vim.diagnostic.enable(false)
  end
end)

-- Neotree
vim.keymap.set('n', '\\', ':Neotree toggle<CR>', { noremap = true, silent = true })

-- Diagnostics
vim.keymap.set('n', '[d', function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Go to previous diagnostic message' })

vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to next diagnostic message' })

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

