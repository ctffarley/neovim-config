return {
  'gnoLLex/onedark.nvim',
  config = function()
    require('onedark').setup {
      toggle_style_key = '<leader>ts', -- keybind to toggle theme style.
      toggle_style_list = { 'dark', 'light' },
    }
    require('onedark').load()
  end,
}
