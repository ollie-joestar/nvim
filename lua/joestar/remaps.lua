vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]revious [V]iew' })
vim.keymap.set('n', '<leader>pf', '<C-^>', { desc = '[P]revious [F]ile' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Testing keymaps
vim.keymap.set('n', '<leader>br', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Search for the word under the cursor' })
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`
-- Copilot keymaps
vim.keymap.set('i', '<C-j>', 'copilot#Next()', {
  expr = true,
  silent = true,
  replace_keycodes = false,
})
vim.keymap.set('i', '<C-k>', 'copilot#Previous()', {
  expr = true,
  silent = true,
  replace_keycodes = false,
})
vim.keymap.set('i', '<S-Tab>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  silent = true,
  replace_keycodes = false,
})
vim.keymap.set('i', '<C-Space>', 'copilot-accept-word', {
  expr = true,
  silent = true,
  replace_keycodes = false,
})
