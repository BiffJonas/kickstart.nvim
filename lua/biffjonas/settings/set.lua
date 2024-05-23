vim.opt.nu = true
vim.opt.relativenumber = true

-- Cursor
vim.opt.guicursor = {
  'n-v:block',
  'i-c-ci-ve:ver25,r-cr:hor20,o:hor50',
  -- 'a:blinkon100-blinkwait300-blinkoff150',
}

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- Formatting
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = false

-- Cmd line
vim.opt.laststatus = 3
vim.opt.ruler = false
vim.opt.showmode = true
vim.opt.cmdheight = 1

-- Files
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

-- Highlights
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

-- Misc
vim.opt.scrolloff = 10
vim.opt.updatetime = 50
vim.opt.mouse = ''

vim.opt.splitright = true
vim.api.nvim_set_option('clipboard', 'unnamedplus')
