return {
  {
    'tpope/vim-fugitive',
    vim.keymap.set('n', '<leader>gs', ':Git -p status<CR>', { desc = 'Git Status' }),
    vim.keymap.set('n', '<leader>gc', ':Git -p commit<CR>', { desc = 'Git Commit' }),
    -- Keybinding for Git Add Current Buffer
    vim.keymap.set('n', '<leader>ga', function()
      local current_file = vim.fn.expand '%:p' -- Get the full path of the current buffer
      vim.cmd('Git add ' .. current_file) -- Construct and execute the command
      -- Check if the add command succeeded
      if vim.v.shell_error == 0 then
        vim.notify(vim.fn.expand '%:t' .. ' added to git.', vim.log.levels.INFO) -- Notify success
      else
        vim.notify('Failed to add ' .. vim.fn.expand '%:t', vim.log.levels.ERROR) -- Notify failure
      end
    end, { desc = 'Git Add Current File' }),
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
      vim.keymap.set('n', '<leader>gp', function()
        require('gitsigns').preview_hunk()
      end, { desc = 'Preview hunk' })
    end,
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
}
