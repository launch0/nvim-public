-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Nerd Commenter
vim.g.NERDCreateDefaultMappings = 1
vim.g.NERDSpaceDelims = 1
vim.g.NERDCompactSexyComs = 1
vim.g.NERDCommentEmptyLines = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDToggleCheckAllLines = 1
vim.g.NERDDefaultAlign = 'left'

vim.keymap.set({'n', 'v'}, ',,', '<Plug>NERDCommenterToggle')
vim.keymap.set({'n', 'v'}, ',y', '<Plug>NERDCommenterYank')

require('flit').setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {}
}

vim.o.tabstop=4
vim.o.shiftwidth=4
vim.o.softtabstop=4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.backspace='indent,eol,start'
