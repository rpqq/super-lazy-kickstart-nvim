return { -- color schenme
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
    require('vscode').setup {
      styles = {
          comments = { italic = true }, 
	  terminal_colors = true,
	  -- transparent = true
        },
      }
      -- Load the colorscheme here.
    vim.cmd.colorscheme 'vscode'
    end
  }

