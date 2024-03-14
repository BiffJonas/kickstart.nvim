vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', ':Ex<CR>', { noremap = true, silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'G', 'Gzz')

-- Split remaps
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-j>', '<C-w>j')

vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { silent = true })
vim.keymap.set('n', '<leader>td', ':tabclose<CR>', { silent = true })

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('v', '<leader>y', '*y')
vim.keymap.set('i', '<C-c>', '<Esc>')
vim.keymap.set('x', '<C-c>', '<Esc>')

vim.keymap.set('n', 'ZA', ':wqa<CR>')
vim.keymap.set('n', '<leader>ms', ':mks!<CR>')

--TODO
--vim.keymap.set("n", "<leader>so", ":source ~/.config/nvim/init.lua<CR>", {silent = true })

vim.keymap.set('i', '<BS>', '<Nop>')
vim.keymap.set('i', '<CR>', '<Nop>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
