-- ~/.config/nvim/lua/custom/plugins/coc-keymaps.lua
return {
  {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function()
      -- Use <Tab> and <S-Tab> to navigate completion menu
      vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, expr = true, silent = true })

      vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<C-h>"', { noremap = true, expr = true, silent = true })

      -- Direct key for Code Action (Alt+Enter style)
      vim.api.nvim_set_keymap('n', '<A-CR>', '<Plug>(coc-codeaction)', { silent = true })
      vim.api.nvim_set_keymap('x', '<A-CR>', '<Plug>(coc-codeaction-selected)', { silent = true })
      vim.api.nvim_set_keymap('n', '<leader>qf', '<Plug>(coc-fix-current)', { silent = true })

      -- Use <C-o> to confirm current suggestion (first by default)
      vim.api.nvim_set_keymap('i', '<C-o>', 'coc#pum#visible() ? coc#pum#confirm() : "\\<C-o>"', { noremap = true, expr = true, silent = true })
    end,
  },
}
