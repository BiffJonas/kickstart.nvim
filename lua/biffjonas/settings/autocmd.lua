--Yank highlight
vim.cmd 'highlight Yank guibg=#4C1D95 ctermbg=144'
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank({ higroup = "Yank", timeout = 100 })
  augroup END
]]

vim.api.nvim_exec(
  [[
  autocmd FileType help wincmd L
]],
  false
)
