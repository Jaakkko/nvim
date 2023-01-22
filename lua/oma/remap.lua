vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('', '$', '<End>')
vim.keymap.set('', '0', '<Home>')
vim.keymap.set('', 'ä', '$', { remap = true })
vim.keymap.set('', 'ö', '0', { remap = true })

-- remap <ESC> to å
-- x, s instead of v to make å work
vim.keymap.set({ 'c', 'x', 's', 't', 'l' }, '<ESC>', '<NOP>')
vim.keymap.set({ 'c', 'x', 's', 't', 'l' }, 'å', '<ESC>')

-- l for r,f and t commands
-- c for cmd-line
vim.keymap.set({ '', 'c', 't', 'l' }, 'Ö', '{', { remap = true })
vim.keymap.set({ '', 'c', 't', 'l' }, 'Ä', '}', { remap = true })

vim.keymap.set('n', '<c-å>', '<c-]>')

vim.keymap.set('n', '<leader>sh', '<cmd>set hlsearch!<cr>')
vim.keymap.set('n', '<leader>sc', '<cmd>noh<cr>')

-- v causes problems with snippets
vim.keymap.set('x', 'J', ':m \'>+1<CR>gv=gv')
vim.keymap.set('x', 'K', ':m \'<-2<CR>gv=gv')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<F12>', vim.cmd.SearchSession)
