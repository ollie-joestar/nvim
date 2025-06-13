require('kanagawa').setup {
  compile = false, -- enable compiling the colorscheme
  undercurl = true, -- enable undercurls
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = true, -- do not set background color
  dimInactive = false, -- dim inactive window `:h hl-NormalNC`
  terminalColors = true, -- define vim.g.terminal_color_{0,17}

  colors = { -- add/modify theme and palette colors
    theme = {
      all = {
        ui = {
          bg_gutter = 'none',
        },
      },
    },
    palette = {},
  },

  overrides = function(colors)
    local theme = colors.theme
    return {
      NormalFloat = { bg = 'none' },
      FloatBorder = { bg = 'none' },
      FloatTitle = { bg = 'none' },

      -- Save an hlgroup with dark background and dimmed foreground
      -- so that you can use it where your still want darker windows.
      -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
      NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

      -- Popular plugins that open floats will link to NormalFloat by default;
      -- set their background accordingly if you wish to keep them dark and borderless
      LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
      MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
    }
  end,

  -- overrides = function(colors) -- add/modify highlights
  --   return {}
  -- end,

  theme = 'wave', -- Load "wave" theme
  background = { -- map the value of 'background' option to a theme
    dark = 'dragon', -- try "dragon" !
    light = 'lotus',
  },
}

local function waifu()
  require('kanagawa').setup {
    compile = false,
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true, -- 🔥 enable transparent background
    dimInactive = false,
    terminalColors = true,

    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = 'none',
          },
        },
      },
      palette = {},
    },

    overrides = function(colors)
      local theme = colors.theme
      return {
        NormalFloat = { bg = 'none' },
        FloatBorder = { bg = 'none' },
        FloatTitle = { bg = 'none' },

        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
      }
    end,

    -- theme = 'wave',
    background = {
      dark = 'dragon',
      light = 'lotus',
    },
  }
  vim.cmd 'colorscheme kanagawa' -- re-apply the colorscheme
end

local function maidenless()
  require('kanagawa').setup {
    compile = false,
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false, -- 🔥 enable transparent background
    dimInactive = false,
    terminalColors = true,

    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = 'none',
          },
        },
      },
      palette = {},
    },

    overrides = function(colors)
      local theme = colors.theme
      return {
        NormalFloat = { bg = 'none' },
        FloatBorder = { bg = 'none' },
        FloatTitle = { bg = 'none' },

        NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
        LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
      }
    end,

    -- theme = 'wave',
    background = {
      dark = 'dragon',
      light = 'lotus',
    },
  }
  vim.cmd 'colorscheme kanagawa' -- re-apply the colorscheme
end
-- setup must be called before loading
vim.cmd 'colorscheme kanagawa'
-- vim.cmd 'colorscheme kanagawa-dragon'

local function max()
  vim.cmd 'colorscheme kanagawa-lotus'
end

local function dark()
  vim.cmd 'colorscheme kanagawa-dragon'
end

local function normal()
  vim.cmd 'colorscheme kanagawa'
end

return {
  max = max,
  dark = dark,
  normal = normal,
  waifu = waifu,
  maidenless = maidenless,
}
