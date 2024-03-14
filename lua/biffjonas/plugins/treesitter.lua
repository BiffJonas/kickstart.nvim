local M = {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },

  config = function()
    local configs = require 'nvim-treesitter.configs'

    configs.setup {
      auto_install = true,
      modules = {},
      ignore_install = {},
      ensure_installed = {
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query',
        'java',
        'typescript',
        'javascript',
        'html',
        'css',
      },

      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}

return { M }
