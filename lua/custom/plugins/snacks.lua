return {
  'folke/snacks.nvim',
  opts = {
    gitbrowse = {},
    lazygit = {},
  },
  config = function()
    -- gitbrowse keymap
    vim.keymap.set('n', '<leader>gb', function()
      require('snacks').gitbrowse()
    end, { desc = '[G]it [B]rowse' })
    -- lazygit keymap
    vim.keymap.set('n', '<leader>lg', function()
      require('snacks').lazygit.open()
    end, { desc = '[L]azy[G]it' })
  end,
}
