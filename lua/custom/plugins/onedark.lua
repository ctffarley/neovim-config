return {
  'gnoLLex/onedark.nvim',
  config = function()
    require('onedark').setup {
      style = 'dark',
      toggle_style_key = '<leader>ts', -- keybind to toggle theme style.
      toggle_style_list = { 'light', 'dark' },
    }
    require('onedark').load()
  end,
}
