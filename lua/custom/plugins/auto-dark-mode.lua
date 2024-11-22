return {
  'f-person/auto-dark-mode.nvim',
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.o.background = 'dark'
      require('onedark').setup {
        style = 'dark',
      }
      vim.cmd 'colorscheme onedark'
    end,
    set_light_mode = function()
      vim.o.background = 'light'
      require('onedark').setup {
        style = 'light',
      }
      vim.cmd 'colorscheme onedark'
    end,
    fallback = 'dark',
  },
}
