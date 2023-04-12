return require('lualine').setup {
  options = {
    icons_enabled = false,
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
  },

  sections = {
    -- Include full path with tilde in the filename section of the statusbar.
    lualine_c = { 'filename', { 'filename', path = 3 } },
  },
}
