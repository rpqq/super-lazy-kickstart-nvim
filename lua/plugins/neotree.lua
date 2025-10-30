-- Status of plugins ':Lazy'; Update plugins ':Lazy update'
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    opts = {
	window = {
		width = 20,
	},
    },
    lazy = false, -- neo-tree will lazily load itself
  },
  require 'plugins.colortheme'
}





