return {
  -- "gc" to comment visual regions/lines
  -- "gb" to comment blocks
  -- "gcc" to comment in normal mode
  {
    'numToStr/Comment.nvim',
    opts = {},
  },
  { -- Highlight todo, notes, etc in comments
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {},
  },
}
