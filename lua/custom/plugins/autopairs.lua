-- ~/.config/nvim/lua/custom/plugins/autopairs.lua
return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true, -- same as require("nvim-autopairs").setup({})
  },
}
