-- :help vim.o
vim.o.number = true -- see line numbers
vim.o.relativenumber = true -- relative 
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end) -- sync os clipboard and vim
vim.o.wrap = false -- display lines as one line long
vim.o.linebreak = true -- companion to wrap, don't split words
vim.o.mouse = 'a' -- enable mouse mode
vim.o.autoindent = true -- copt indent from current line when starting \n
vim.o.ignorecase = true -- case-insensitive search
vim.o.smartcase = true -- smart case
vim.o.swapfile = false -- creates a swapfile
vim.o.backup = false -- creates a backup file
vim.o.confirm = true -- always ask to confirm before exiting
vim.o.signcolumn = 'yes' -- Keep signcolumn on by default
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.o.undofile = true -- Save undo history
vim.o.splitright = true -- force all vertical splits to go right of current window
vim.o.splitbelow = true -- force all horizontal splits to go below current line
vim.o.cursorline = true -- highlight current line 
vim.o.scrolloff = 10 -- sets amount of lines you can see above scroll:w
vim.o.inccommand = 'split' -- -- Preview substitutions live, as you type!


