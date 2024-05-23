return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = true,
  config = function()
    require('nvim-treesitter.configs').setup {

      textobjects = {

        select = {
          enable = true,
          -- Automatically jump forward to textobj, similar to targets.vim

          lookahead = true,
          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ['af'] = { query = '@function.outer', desc = 'Select outer part of a function' },
            ['if'] = { query = '@function.inner', desc = 'Select inner part of a function' },
            ['ac'] = { query = '@class.outer', desc = 'Select outer part of a class' },
            ['ic'] = { query = '@class.inner', desc = 'Select inner part of a class' },
            -- You can also use captures from other query groups like `locals.scm`
            ['as'] = { query = '@scope.outer', desc = 'Select outer scope' },
            ['is'] = { query = '@scope.inner', desc = 'Select inner scope' },
            ['al'] = { query = '@loop.outer', desc = 'Select outer loop' },
            ['il'] = { query = '@loop.inner', desc = 'Select inner loop' },
            ['ap'] = { query = '@parameter.outer', desc = 'Select outer parameter' },
            ['ip'] = { query = '@parameter.inner', desc = 'Select inner parameter' },
            ['aa'] = { query = '@conditional.outer', query_group = 'locals', desc = 'Select outer conditional' },
            ['ia'] = { query = '@conditional.inner', query_group = 'locals', desc = 'Select inner conditional' },

            --Assignments
            ['a='] = { query = '@assignment.outer', desc = 'Select outer part of a assignment' },
            ['i='] = { query = '@assignment.inner', desc = 'Select inner part of a assignment' },
            ['r='] = { query = '@assignment.rhs', desc = 'Select right hand side of a assignment' },
            ['l='] = { query = '@assignment.lhs', desc = 'Select left hand side of a assignment' },
          },
          selection_modes = {
            ['@parameter.outer'] = 'v',
            ['@loop.outer'] = 'V',
            ['@function.outer'] = 'V',
            ['@class.outer'] = 'V',
          },
          include_surrounding_whitespace = false,
        },
        swap = {
          enable = true,
          swap_next = {
            ['<leader>np'] = '@parameter.inner',
            ['<leader>af'] = '@function.outer',
          },
          swap_previous = {
            ['<leader>pp'] = '@parameter.inner',
            ['<leader>pf'] = '@function.outer',
          },
        },
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            [']f'] = '@function.outer',
            [']c'] = '@class.outer',
            [']p'] = '@parameter.inner',
          },
          goto_next_end = {
            [']F'] = '@function.outer',
            [']C'] = '@class.outer',
            [']P'] = '@parameter.inner',
          },
          goto_previous_start = {
            ['[f'] = '@function.outer',
            ['[c'] = '@class.outer',
            ['[p'] = '@parameter.inner',
          },
          goto_previous_end = {
            ['[F'] = '@function.outer',
            ['[C'] = '@class.outer',
            ['[P'] = '@parameter.inner',
          },
        },
      },
    }
    -- local ts_repeat_move = require 'nvim-treesitter.textobjects.repeatable_move'

    -- Repeat movement with ; and ,
    -- ensure ; goes forward and , goes backward regardless of the last direction
    -- vim.keymap.set({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move_next)
    -- vim.keymap.set({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_previous)

    -- vim way: ; goes to the direction you were moving.
    -- vim.keymap.set({ 'n', 'x', 'o' }, ';', ts_repeat_move.repeat_last_move)
    -- vim.keymap.set({ 'n', 'x', 'o' }, ',', ts_repeat_move.repeat_last_move_opposite)
    --
    -- -- Optionally, make builtin f, F, t, T also repeatable with ; and ,
    -- vim.keymap.set({ 'n', 'x', 'o' }, 'f', ts_repeat_move.builtin_f)
    -- vim.keymap.set({ 'n', 'x', 'o' }, 'F', ts_repeat_move.builtin_F)
    -- vim.keymap.set({ 'n', 'x', 'o' }, 't', ts_repeat_move.builtin_t)
    -- vim.keymap.set({ 'n', 'x', 'o' }, 'T', ts_repeat_move.builtin_T)
  end,
}
