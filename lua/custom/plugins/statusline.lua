return {
  'sschleemilch/slimline.nvim',
  dependencies = {
    { 'echasnovski/mini.icons', version = '*' },
  },
  opts = {
    configs = {
      diagnostics = {
        workspace = true,
      },
      mode = {
        hl = {
          visual = 'CursorLineNr',
        },
      },
    },
    components = {
      left = {
        'mode',
        'git',
        function()
          if require('lazy.status').has_updates() then
            local text = require('lazy.status').updates()
            return text
          else
            return ''
          end
        end,
      },
    },
    spaces = {
      left = '',
      right = '',
    },
  },
}
