return {
  'vim-test/vim-test',
  config = function()
    vim.keymap.set('n', '<leader>Tn', ':TestNearest<CR>', { desc = 'Run nearest test' })
    vim.keymap.set('n', '<leader>Tf', ':TestFile<CR>', { desc = 'Run test file' })
    vim.cmd "let test#strategy = 'neovim'"
    vim.cmd "let test#neovim#term_position = 'vert'"
  end,
}
