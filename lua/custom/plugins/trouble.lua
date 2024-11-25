return {
  'folke/trouble.nvim',

  opts = {
    auto_close = true,
  },

  cmd = 'Trouble',
  keys = {
    {
      '<leader>q',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics (Trouble)',
    },
  },
}
