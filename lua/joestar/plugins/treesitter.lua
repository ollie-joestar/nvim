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
  fold = {
    enable = true,
    method = 'expr',
    expr = 'nvim_treesitter#foldexpr()',
  },
  sync_install = false,
  auto_install = true,
}
vim.cmd 'TSUpdate'
