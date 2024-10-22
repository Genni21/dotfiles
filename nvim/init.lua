require 'genni'
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Sage group
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('Sage', {}),
  pattern = { 'sage' },
  callback = function()
    vim.opt.ft = 'python'
  end,
})

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
