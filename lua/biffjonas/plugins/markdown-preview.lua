vim.api.nvim_exec(
  [[
augroup markdown_settings
  autocmd!
  autocmd FileType markdown nnoremap <buffer> <leader>mp :MarkdownPreview<CR>

  autocmd FileType markdown nnoremap <buffer> <C-f> ]s1z=``
  autocmd FileType markdown nnoremap <buffer> <C-q> [s1z=``
  autocmd FileType markdown nnoremap <buffer> <C-m> [szg``
  autocmd FileType markdown nnoremap <buffer> <C-p> ``zw``

  autocmd FileType markdown inoremap <buffer> <C-f> <Esc>]s1z=``a
  autocmd FileType markdown inoremap <buffer> <C-q> <Esc>[s1z=``a
  autocmd FileType markdown inoremap <buffer> <C-m> <Esc>[szg``a
  autocmd FileType markdown inoremap <buffer> <C-p> <Esc>``zw``a

  autocmd FileType markdown setlocal spell spelllang=en_us,sv
augroup END
]],
  false
)
-- Set to 1, nvim will open the preview window after entering the Markdown buffer
-- Default: 0
vim.g.mkdp_auto_start = 0

-- Set to 1, the nvim will auto close current preview window when changing
-- from Markdown buffer to another buffer
-- Default: 1
vim.g.mkdp_auto_close = 1

-- Set to 1, Vim will refresh Markdown when saving the buffer or
-- when leaving insert mode. Default 0 is auto-refresh Markdown as you edit or
-- move the cursor
-- Default: 0
vim.g.mkdp_refresh_slow = 0

-- Set to 1, the MarkdownPreview command can be used for all files,
-- by default it can be used in Markdown files only
-- Default: 0
vim.g.mkdp_command_for_global = 0

-- Set to 1, the preview server is available to others in your network.
-- By default, the server listens on localhost (127.0.0.1)
-- Default: 0
vim.g.mkdp_open_to_the_world = 0

-- Use custom IP to open preview page.
-- Useful when you work in remote Vim and preview on local browser.
-- Default empty
vim.g.mkdp_open_ip = ''

-- Specify browser to open preview page
-- For path with space
-- Valid: `/path/with\ space/xxx`
-- Invalid: `/path/with\\ space/xxx`
-- Default: ''
vim.g.mkdp_browser = 'firefox-developer-edition'

-- Set to 1, echo preview page URL in command line when opening preview page
-- Default is 0
vim.g.mkdp_echo_preview_url = 0

-- A custom Vim function name to open preview page
-- This function will receive URL as param
-- Default is empty
vim.g.mkdp_browserfunc = ''

-- Options for Markdown rendering
-- mkit: markdown-it options for rendering
-- katex: KaTeX options for math
-- uml: markdown-it-plantuml options
-- maid: mermaid options
-- disable_sync_scroll: whether to disable sync scroll, default 0
-- sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
--   middle: means the cursor position is always at the middle of the preview page
--   top: means the Vim top vie

return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    vim.fn['mkdp#util#install']()
  end,
}
