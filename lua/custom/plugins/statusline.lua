return {
  'sschleemilch/slimline.nvim',
  dependencies = {
    { 'echasnovski/mini.icons', version = '*' },
  },
  opts = {
    components = { -- Choose components and their location
      left = {
        'mode',
        'path',
        'git',
        function()
          local h = require 'slimline.highlights'
          local c = require('slimline').config
          if require('lazy.status').has_updates() then
            local text = require('lazy.status').updates()
            return h.hl_component({ primary = text }, h.hls.component, c.sep)
          else
            return ''
          end
        end,
      },
    },
    workspace_diagnostics = true,
  },
}
