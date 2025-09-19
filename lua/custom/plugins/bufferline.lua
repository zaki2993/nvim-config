return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    event = 'VeryLazy',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    keys = {
      { '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev tab' },
      { '<S-l>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next tab' },
      { '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', desc = 'Tab 1' },
      { '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', desc = 'Tab 2' },
      { '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', desc = 'Tab 3' },
      { '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', desc = 'Tab 4' },
      { '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', desc = 'Tab 5' },
      { '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', desc = 'Tab 6' },
      { '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', desc = 'Tab 7' },
      { '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', desc = 'Tab 8' },
      { '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', desc = 'Tab 9' },
    },
    opts = function()
      local ok, bufferline = pcall(require, 'bufferline')
      local preset = ok and bufferline.style_preset or nil
      return {
        options = {
          mode = 'tabs', -- << show real TABS (not buffers)
          numbers = 'ordinal', -- 1,2,3…
          separator_style = 'slant', -- "slant" | "thick" | "thin"
          indicator = { style = 'underline' },
          show_close_icon = false,
          show_buffer_close_icons = false,
          color_icons = true,
          always_show_bufferline = true,
          tab_size = 18,
          diagnostics = 'nvim_lsp',
          diagnostics_indicator = function(count, level)
            local icon = level:match 'error' and ' ' or ' '
            return ' ' .. icon .. count
          end,
          hover = { enabled = true, delay = 50, reveal = { 'close' } },
          offsets = {
            { filetype = 'NvimTree', text = 'File Explorer', highlight = 'Directory', separator = true },
          },
          -- optional presets if available (disables italics, etc.)
          style_preset = preset and { preset.no_italic, preset.no_bold } or nil,
        },
      }
    end,
  },
}
