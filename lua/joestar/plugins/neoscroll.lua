neoscroll = require 'neoscroll'
neoscroll.setup {
  -- Default easing function used in any animation where
  -- the `easing` argument has not been explicitly supplied
  easing = 'quadratic',
  hide_cursor = false, -- Hide cursor while scrolling
  stop_eof = true, -- Stop at <EOF> when scrolling downwards
  respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  pre_hook = nil, -- Function to run before the scrolling animation starts
  post_hook = nil, -- Function to run after the scrolling animation ends
  performance_mode = false, -- Disable "Performance Mode" on all buffers.
  duration_multiplier = 1.0, -- Multiplier for the duration of the scrolling animation
  ignored_events = { -- Events ignored while scrolling
    'WinScrolled',
    'CursorMoved',
  },
}
local keymap = {
  -- Use the "sine" easing function
  ['<C-u>'] = function()
    neoscroll.ctrl_u { duration = 75, easing = 'sine' }
  end,
  ['<C-d>'] = function()
    neoscroll.ctrl_d { duration = 75, easing = 'sine' }
  end,
  -- Use the "circular" easing function
  ['<C-b>'] = function()
    neoscroll.ctrl_b { duration = 100, easing = 'circular' }
  end,
  ['<C-f>'] = function()
    neoscroll.ctrl_f { duration = 100, easing = 'circular' }
  end,
  -- When no value is passed the `easing` option supplied in `setup()` is used
  ['<C-y>'] = function()
    neoscroll.scroll(-0.1, { move_cursor = true, duration = 50 })
  end,
  ['<C-e>'] = function()
    neoscroll.scroll(0.1, { move_cursor = true, duration = 50 })
  end,
}
local modes = { 'n', 'v', 'x' }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end
