vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_animation_length = 0

vim.opt.background = 'dark'

vim.opt.wildignorecase = true
vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'

vim.opt.imcmdline = true
vim.opt.iminsert = 1
vim.opt.hlsearch = false
vim.opt.timeout = false
vim.opt.guifont = 'JetBrainsMonoNL NF:h12'
vim.opt.mouse = 'vni'

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.sessionoptions = {
  'blank',
  'buffers',
  'curdir',
  'folds',
  'help',
  'tabpages',
  'winsize',
  'winpos',
  'terminal',
  'localoptions',
}

vim.opt.laststatus = 3

vim.opt.autoread = true
