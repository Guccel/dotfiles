return {
 { -- Theme
    -- 'gruvbox-community/gruvbox',
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'gruvbox'
      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },
  -- NOTE: First, some plugins that don't require any configuration

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- NOTE: This is where your plugins related to LSP can be installed.
  -- The configuration is done below. Search for lspconfig to find it below.
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  { -- Adds git releated signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },


  { -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'onedark',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    opts = {
      char = '|',
      show_trailing_blankline_indent = false,
    },
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- -- Fuzzy Finder (files, lsp, etc)
  -- { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } },
--
  -- {
  --   'nvim-telescope/telescope-fzf-native.nvim',
  --   -- NOTE: If you are having trouble with this installation,
  --   --       refer to the README for telescope-fzf-native for more instructions.
  --   build = 'make',
  --   cond = function()
  --     return vim.fn.executable 'make' == 1
  --   end,
  -- },
  --
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },

  'ms-jpq/chadtree',

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
    },
  },

   'folke/zen-mode.nvim',
  'junegunn/goyo.vim',

   {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    lazy = true,
    build = "cd /home/aj/.local/share/nvim/lazy/markdown-preview.nvim/app/lib/app && yarn install",
  },
  {
    "toppair/peek.nvim",
    ft = "markdown",
    -- init = "/home/aj/.local/share/nvim/lazy/peek && deno task --quiet build:fast",
    opts = {
      auto_load = true,
      close_on_bdelete = true,
      syntax = true,
      theme = "dark",
      update_on_change = true,
      app = 'webview',
      filetype = { 'markdown', },
      }
  }
}

