require('colorizer').setup {
  filetypes = { '*' }, -- Filetype options.  Accepts table like `user_default_options`
  -- Boolean | List of usercommands to enable.  See User commands section.
  user_default_options = {
    names = false,
    RRGGBB = true, -- #RRGGBB hex codes
    RRGGBBAA = false, -- #RRGGBBAA hex codes
    AARRGGBB = true, -- 0xAARRGGBB hex codes
  },
}
