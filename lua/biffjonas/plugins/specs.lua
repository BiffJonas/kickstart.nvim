-- Press <C-b> to call specs!
-- vim.keymap.set('n', '<C-b>', '<cmd>lua require("specs").show_specs()<CR>', { noremap = true, silent = true })

-- You can even bind it to search jumping and more, example:
vim.keymap.set('n', 'n', 'nzz<cmd>lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'N', 'Nzz<cmd>lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'G', 'Gzz<cmd>lua require("specs").show_specs()<CR>', { noremap = true, silent = true })
vim.cmd 'highlight JumpHighlight ctermfg=red ctermbg=green guifg=#00ffff guibg=#00ffff'
-- Or maybe you do a lot of screen-casts and want to call attention to a specific line of code:
vim.api.nvim_set_keymap(
  'n',
  '<leader>v',
  ':lua require("specs").show_specs({width = 97, winhl = "Search", delay_ms = 0, inc_ms = 21})<CR>',
  { noremap = true, silent = true }
)
return {
  'edluffy/specs.nvim',
  config = function()
    require('specs').setup {
      show_jumps = false,
      min_jump = 30,
      popup = {
        delay_ms = 0, -- delay before popup displays
        inc_ms = 5, -- time increments used for fade/resize effects
        blend = 50, -- starting blend, between 0-100 (fully transparent), see :h winblend
        width = 5,
        winhl = 'JumpHighlight',
        fader = require('specs').linear_fader,
        resizer = require('specs').shrink_resizer,
      },
      ignore_filetypes = {},
      ignore_buftypes = {
        nofile = true,
      },
    }
  end,
}
