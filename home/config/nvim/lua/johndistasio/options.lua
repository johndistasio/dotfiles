local options = {
  -- never automatically save
  autowrite = false,
  autowriteall = false,

  -- highlight the active line
  cursorline = true,

  -- highlight the specified column
  colorcolumn = '120',

  -- convert tabs to spaces
  expandtab = true,

  -- force a status bar
  laststatus = 2,

  -- enable the mouse
  mouse = 'a',

  -- always show line numbers
  number = true,

  -- show relative line numbers for other lines
  relativenumber = true,

  -- how many columns to indent text with << and >>
  shiftwidth = 2,

  -- how many columns to use when inserting tabs
  softtabstop = 2,

  -- open new horizontal splits on the bottom
  splitbelow = true,

  -- open new vertical splits on the right
  splitright = true,

  -- don't create swap files
  swapfile = true,

  -- number of columns to display tabs as
  tabstop = 2,

  -- use true color
  termguicolors = true,
}

for k, v in pairs (options) do
  vim.opt[k] = v
end
