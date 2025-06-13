-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require 'joestar'
require 'joestar.settings'
require 'joestar.remaps'
require 'joestar.lazy'
-- require('joestar.settings').max()
-- require('joestar.settings').dark()

vim.api.nvim_create_user_command('MaxHere', function()
  require('joestar.plugins.kanagawa').max()
end, {})

vim.api.nvim_create_user_command('DarkHere', function()
  require('joestar.plugins.kanagawa').dark()
end, {})

vim.api.nvim_create_user_command('NormalHere', function()
  require('joestar.plugins.kanagawa').normal()
end, {})

vim.api.nvim_create_user_command('Waifu', function()
  require('joestar.plugins.kanagawa').waifu()
end, {})

vim.api.nvim_create_user_command('Maidenless', function()
  require('joestar.plugins.kanagawa').maidenless()
end, {})
