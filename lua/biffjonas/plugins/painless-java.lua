return {
  'nvim-java/nvim-java',
  dependencies = {
    'nvim-java/lua-async-await',
    'nvim-java/nvim-java-core',
    'nvim-java/nvim-java-test',
    'nvim-java/nvim-java-dap',
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-dap-ui',
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    {
      'williamboman/mason.nvim',
      opts = {
        registries = {
          'github:nvim-java/mason-registry',
          'github:mason-org/mason-registry',
        },
      },
    },
  },

  config = function()
    -- require('java').setup()
    -- require('lspconfig').jdtls.setup {
    --   settings = {
    --     java = {
    --       configuration = {
    --         runtimes = {
    --           {
    --             name = 'JavaSE-21',
    --             path = '/lib/jvm/java-21-openjdk',
    --             default = true,
    --           },
    --         },
    --       },
    --     },
    --   },
    -- }

    -- setup debug
    local dap = require 'dap'
    local dapui = require 'dapui'
    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
    vim.keymap.set('n', '<leader>B', dap.set_breakpoint)
    vim.keymap.set('n', '<leader>bl', dap.set_breakpoint)
    -- vim.keymap.set('n', '<leader>dr', dap.repl.open)
    vim.keymap.set('n', '<leader>du', ':lua require("dapui").open({ reset = true })<CR>', { noremap = true, desc = 'Debug: See last session result.' })
    vim.keymap.set('n', '<leader>dq', ':lua require("dapui").close()<CR>', { noremap = true, desc = 'Debug: See last session result.' })

    -- view informations in debug
    function show_dap_centered_scopes()
      local widgets = require 'dap.ui.widgets'
      widgets.centered_float(widgets.scopes)
    end
    -- vim.keymap.set('n', 'gs', ':lua show_dap_centered_scopes()<CR>')

    -- move in debug
    vim.keymap.set('n', '<leader>ds', dap.continue, { desc = 'Debug: Start/Continue' })
    vim.keymap.set('n', '<F1>', dap.step_into, { desc = 'Debug: Step Into' })
    vim.keymap.set('n', '<F2>', dap.step_over, { desc = 'Debug: Step Over' })
    vim.keymap.set('n', '<F3>', dap.step_out, { desc = 'Debug: Step Out' })
    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = 'Debug: Toggle Breakpoint' })
    vim.keymap.set('n', '<leader>B', function()
      dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
    end, { desc = 'Debug: Set Breakpoint' })

    dapui.setup {
      -- Set icons to characters that are more likely to work in every terminal.
      --    Feel free to remove or use ones that you like more! :)
      --    Don't feel like these are good choices.
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }
  end,
}
