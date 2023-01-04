vim.g.neovide_cursor_animation_length = 0

vim.o.nu = true
vim.o.relativenumber = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.o.iminsert = 1
vim.o.hlsearch = false
vim.o.timeout = false
vim.o.guifont = 'JetBrainsMonoNL NF:h12'
vim.o.mouse = 'vni'
