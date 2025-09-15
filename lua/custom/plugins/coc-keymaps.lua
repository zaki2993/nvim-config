-- ~/.config/nvim/lua/custom/plugins/coc-keymaps.lua
return {
  {
    'neoclide/coc.nvim',
    branch = 'release',
    config = function()
      -- Use <Tab> and <S-Tab> to navigate completion menu
      vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { noremap = true, expr = true, silent = true })

      vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<C-h>"', { noremap = true, expr = true, silent = true })

      -- Use <C-o> to confirm current suggestion (first by default)
      vim.api.nvim_set_keymap('i', '<C-o>', 'coc#pum#visible() ? coc#pum#confirm() : "\\<C-o>"', { noremap = true, expr = true, silent = true })
    end,
  },
}
