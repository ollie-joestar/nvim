require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'bash',
    'c',
    'cpp',
    'html',
    'json',
    'lua',
    'python',
    'rust',
    'scss',
    'yaml',
    'jsonc',
  },
  ignore_install = { 'haskell' }, -- List of parsers to ignore installing
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  sync_install = false,
  auto_install = true,
}
vim.cmd 'TSUpdate'
