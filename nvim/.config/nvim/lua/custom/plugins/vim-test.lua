return {
  'vim-test/vim-test',
  config = function()
    vim.keymap.set('n', '<leader>tr', ':TestNearest<CR>', { desc = 'Run nearest test' })
    vim.keymap.set('n', '<leader>tf', ':TestFile<CR>', { desc = 'Run test file' })
    vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>', { desc = 'Run test suite' })
    vim.cmd "let test#strategy = 'neovim'"
    vim.cmd "let test#neovim#term_position = 'vert'"
  end,
}
