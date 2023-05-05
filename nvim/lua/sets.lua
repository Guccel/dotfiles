vim.o.guicursor = ''

vim.o.nu = true
vim.o.relativenumber = true

-- Disable errorbells
vim.o.errorbells = false

-- Tab settings
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Enables smart indentation
vim.o.smartindent = true

-- Seatch options
vim.o.hlsearch = false
vim.o.incsearch = true

-- Make line numbers default
vim.wo.number = true

-- Set scrolloff ammount
vim.o.scrolloff = 8

-- Signcolumn
vim.o.signcolumn = 'yes'

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Other
vim.opt.errorbells = false
vim.o.termguicolors = true



vim.o.ambiwidth = "double"
vim.o.autoindent = true
vim.o.autoread = true
vim.o.autowrite = true
vim.towriteall = true
vim.o.breakindent = true
vim.o.cdhome = true
vim.o.cindent = true
vim.o.complete = ".,w,b,u,t,k"
