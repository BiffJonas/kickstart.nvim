return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000, -- make sure to load this before all the other start plugins
  init = function()
    vim.cmd.colorscheme 'gruvbox'

    vim.cmd.hi 'clear SignColumn'
    vim.cmd.hi 'clear CursorLineNr'

    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'gray' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = 'gray' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'gray' })
    vim.api.nvim_set_hl(0, 'Normal', { fg = '#EFEFEF', bg = '#090909' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { fg = '#EFEFEF', bg = '#090909' })
  end,
}
