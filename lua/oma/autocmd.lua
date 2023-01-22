-- auto reload
vim.api.nvim_create_autocmd({ 'FocusGained', 'BufEnter', 'CursorHold', 'CursorHoldI' }, {
  command = 'if mode() != \'c\' | checktime | endif',
  pattern = { '*' },
})
