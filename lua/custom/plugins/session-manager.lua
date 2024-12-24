return {
  'Shatur/neovim-session-manager',
  config = function()
    local config = require 'session_manager.config'
    local opts = { autoload_mode = { config.AutoloadMode.CurrentDir, config.AutoloadMode.Disabled } }
    require('session_manager').setup(opts)
  end,
}
