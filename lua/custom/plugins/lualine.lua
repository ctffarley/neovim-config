return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  config = function()
    require('lualine').setup {
      options = {
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = {
          {
            'mode',
            fmt = function(str)
              return str:sub(1, 1)
            end,
            separator = { left = '' },
            padding = { left = 0, right = 1 },
          },
        },
        lualine_b = { 'filename', 'branch' },
        lualine_c = { { '%=', color = 'Normal' } },
        lualine_x = { { '%=', color = 'Normal' } },
        lualine_y = { { 'filetype', 'progress' } },
        lualine_z = {
          { 'location', separator = { right = '' }, padding = { left = 1, right = 0 } },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
    vim.api.nvim_clear_autocmds {
      event = 'ColorScheme',
      group = 'lualine',
    }
    vim.api.nvim_create_autocmd('ColorScheme', {
      callback = function()
        require('lualine').setup()
        vim.api.nvim_set_hl(0, 'lualine_c_normal', { ctermbg = 'NONE', force = true })
        vim.api.nvim_set_hl(0, 'lualine_c_inactive', { ctermbg = 'NONE', force = true })
      end,
    })
  end,
}
