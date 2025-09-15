-- ~/.config/nvim/lua/custom/plugins/blink-keys.lua
return {
  {
    'saghen/blink.cmp',
    opts = function(_, opts)
      -- ⛔ Disable blink on Java so coc handles it
      opts.enabled = function()
        return vim.bo.filetype ~= 'java'
      end

      -- keep default preset, then override keys for C/C++
      opts.keymap = opts.keymap or {}
      opts.keymap.preset = opts.keymap.preset or 'default'

      -- Confirm current (or first) with Ctrl-o
      opts.keymap['<C-o>'] = { 'select_and_accept' }

      -- Move & insert immediately (coc-like)
      opts.keymap['<C-n>'] = { 'insert_next' }
      opts.keymap['<C-p>'] = { 'insert_prev' }

      -- Make first item preselected & auto-insert while moving
      opts.completion = vim.tbl_deep_extend('force', opts.completion or {}, {
        list = {
          selection = {
            preselect = true,
            auto_insert = true,
          },
        },
        menu = { auto_show = true },
      })
    end,
  },
}
