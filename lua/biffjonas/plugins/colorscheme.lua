return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000, -- make sure to load this before all the other start plugins
  init = function()
    --     -- Load the colorscheme here.
    --     -- Like many other themes, this one has different styles, and you could load
    --     -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'gruvbox'
    --     -- You can configure highlights by doing something like
    vim.cmd.hi 'clear SignColumn'
    vim.cmd.hi 'clear CursorLineNr'
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'gray' })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = 'gray' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'gray' })
    vim.api.nvim_set_hl(0, 'Normal', { bg = '#090909' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  end,
}
