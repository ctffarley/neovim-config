return {
  'f-person/auto-dark-mode.nvim',
  config = {
    update_interval = 1000,
    set_dark_mode = function()
      require('onedark').setup {
        style = 'dark',
      }
      vim.cmd 'colorscheme onedark'
    end,
    set_light_mode = function()
      require('onedark').setup {
        style = 'light',
      }
      vim.cmd 'colorscheme onedark'
    end,
  },
}
