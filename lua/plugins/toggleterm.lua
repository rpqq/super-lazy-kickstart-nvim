return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      direction = 'float',
    }

    local Terminal = require('toggleterm.terminal').Terminal

    local function detect_python()
      -- Prefer venv python if it exists
      local venv_python = vim.fn.getcwd() .. '/venv/bin/python'
      if vim.fn.executable(venv_python) == 1 then
        return venv_python
      end
      return 'python3'
    end

    local function run_file()
      local file = vim.fn.expand '%'
      local ft = vim.bo.filetype

      -- Auto-save first
      vim.cmd 'write'

      local cmd = nil

      if ft == 'python' then
        cmd = detect_python() .. ' ' .. file
      elseif ft == 'c' then
        local output = vim.fn.expand '%:r'
        cmd = string.format('gcc %s -o %s && ./%s', file, output, output)
      elseif ft == 'cpp' then
        local output = vim.fn.expand '%:r'
        cmd = string.format('g++ %s -o %s && ./%s', file, output, output)
      elseif ft == 'javascript' then
        cmd = 'node ' .. file
      else
        cmd = "echo 'Unsupported filetype: " .. ft .. "'"
      end

      Terminal:new({ cmd = cmd, close_on_exit = false }):toggle()
    end

    vim.keymap.set('n', '<leader>r', run_file, { desc = 'Run current file' })
  end,
}
