return {
  'laytan/cloak.nvim',
  event = 'VeryLazy',
  config = function()
    require('cloak').setup {
      enabled = true,
      cloak_character = '*', -- character used to mask secrets
      highlight_group = 'Comment', -- or 'Visual', etc.

      -- Which file patterns to cloak
      patterns = {
        {
          file_pattern = {
            '.env*',
            'wrangler.toml',
            '.dev.vars',
          },
          cloak_pattern = '=.+', -- everything after '='
        },
      },
    }
  end,
}
