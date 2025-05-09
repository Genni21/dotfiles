return {
  'L3MON4D3/LuaSnip',
  build = 'make install_jsregexp',
  dependencies = {
    'rafamadriz/friendly-snippets',
    config = function()
      require('luasnip.loaders.from_lua').lazy_load {
        paths = '~/.config/nvim/snippets',
      }
    end,
  },
  opts = {
    delete_check_events = 'TextChanged',
  },
}
