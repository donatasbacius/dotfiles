return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,

  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('catppuccin').setup {
      no_italic = true,
    }

    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    -- vim.cmd.colorscheme 'tokyonight-night'
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
