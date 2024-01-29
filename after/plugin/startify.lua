vim.g.startify_session_dir = '~/.config/nvim/session'
vim.g.startify_lists = {
  { type = 'files',     header = {'   Files'} },
  { type = 'sessions',  header = {'   Sessions'} },
  { type = 'bookmarks', header = {'   Bookmarks'} },
}
vim.g.startify_bookmarks = {
  { i = '~/.config/nvim/init.lua' },
  { z = '~/.bashrc' },
  '~/Code',
  '/opt/miscellaneous',
}
