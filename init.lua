
-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- show line numbers
vim.opt.number = true

-- enable mouse
vim.opt.mouse = 'a'

-- sync clipboard
vim.opt.clipboard = 'unnamedplus'

-- enable break ident
vim.opt.breakindent = true

-- save undo file
vim.opt.undofile = true

-- show which line your cursor is on
vim.opt.cursorline = true

-- minimal number lines above and bellow cursor
vim.opt.scrolloff = 10

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  'numToStr/Comment.nvim',

  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
	change = { text = '~' },
	delete = { text = '_' },
	topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
})


