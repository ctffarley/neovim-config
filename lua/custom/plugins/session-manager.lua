return {
  'Shatur/neovim-session-manager',
  config = function()
    local config = require 'session_manager.config'
    local opts = { autoload_mode = { config.AutoloadMode.CurrentDir, config.AutoloadMode.LastSession } }
    require('session_manager').setup(opts)
  end,
}
