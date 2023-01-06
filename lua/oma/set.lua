vim.g.neovide_cursor_animation_length = 0
vim.g.recent_dirs_size = 10

vim.o.wildignorecase = true
vim.o.nu = true
vim.o.relativenumber = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

vim.o.smartindent = true

vim.o.wrap = false

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.termguicolors = true

vim.o.scrolloff = 8
vim.o.signcolumn = "yes"

vim.o.imcmdline = true
vim.o.iminsert = 1
vim.o.hlsearch = false
vim.o.timeout = false
vim.o.guifont = 'JetBrainsMonoNL NF:h12'
vim.o.mouse = 'vni'
