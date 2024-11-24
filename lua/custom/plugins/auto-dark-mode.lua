return {
  'f-person/auto-dark-mode.nvim',
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.o.background = 'dark'
      require('flow').setup {
        dark_theme = true,
        transparent = false,
        high_contrast = true,
        fluo_color = 'pink',
        mode = 'bright',
        aggressive_spell = false,
      }
      vim.cmd 'colorscheme flow'
    end,
    set_light_mode = function()
      vim.o.background = 'light'
      require('flow').setup {
        dark_theme = false,
        transparent = false,
        high_contrast = false,
        fluo_color = 'pink',
        mode = 'base',
        aggressive_spell = false,
      }
      vim.cmd 'colorscheme flow'
    end,
    fallback = 'dark',
  },
}
