-- Super lazy kickstart

-- Requirements from other files
require 'core.options'
require 'core.keymaps'
require 'core.autocommands'

-- 1. Install lazy.nvim plugin manager. See `:help lazy.nvim.txt` or github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
-- 2. Set up method
---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- 3. Configure and install plugins here
-- Status of plugins ':Lazy'; Update plugins ':Lazy update'
require('lazy').setup {
  require 'plugins.neotree',
  require 'plugins.colortheme',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.autocompletion',
  require 'plugins.lsp',
  require 'plugins.autoformatting',
  require 'plugins.alpha',
  require 'plugins.whichkey',
  require 'plugins.harpoon',
  require 'plugins.debug',
  require 'plugins.cloak',
  require 'plugins.misc', -- small packages
}
