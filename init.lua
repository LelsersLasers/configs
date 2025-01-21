-- 80 character ruler
vim.opt.colorcolumn = "80"

-- Display line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight current line
vim.opt.cursorline = true

-- Display current line and column on the status line
vim.opt.ruler = true

-- Set tabs to be 2 spaces wide
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Automatically indent new lines
vim.opt.autoindent = true

-- Highlight search results
vim.opt.hlsearch = true

-- Incremental search
vim.opt.incsearch = true

-- Automatically use case-sensitive search only when uppercase letters are used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Escape clears search highligh
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- Enable mouse support
vim.opt.mouse = "a"

-- Keep 7 lines visible while scrolling
vim.opt.scrolloff = 7

-- Center next/previous search result
vim.keymap.set("n", "n", "nzz", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzz", { noremap = true, silent = true })

-- Show whitespace characters
vim.opt.list = true
-- vim.opt.listchars = { space = "·", tab = "→ ", trail = "•" }
vim.opt.listchars = { tab = "→ ", trail = "•" }

-- True color
vim.opt.termguicolors = true

-- Enable filetype detection and syntax highlighting
vim.cmd("filetype on")
vim.cmd("syntax on")

-- Bind control-e to file explorer
vim.keymap.set("n", "<C-e>", ":Ex<CR>", { noremap = true, silent = true })



-- Automatically install packer.nvim if not already installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Packages
require('packer').startup(function(use)
  -- Manage packer itself
  use 'wbthomason/packer.nvim'

  -- Example plugins
  -- use 'nvim-lua/plenary.nvim'              -- Lua helper functions
  -- use 'nvim-telescope/telescope.nvim'      -- Fuzzy finder
  -- use 'neovim/nvim-lspconfig'              -- Built-in LSP client

  -- Treesitter for syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- Rainbow parentheses/braces
  use "p00f/nvim-ts-rainbow"
  -- Theme: Rose Pine
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- Status line
  use "echasnovski/mini.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)


-- Config status line
local statusline = require 'mini.statusline'
statusline.section_location = function()
  return '%2l:%-2v'
end
require('mini.statusline').setup()


-- Treesitter configuration
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "cpp", "lua", "python", "javascript" },

  -- Automatically install missing parsers when opening a buffer
  auto_install = true,

  -- Enable syntax highlighting
  highlight = {
    enable = true, -- Set to false to disable
    additional_vim_regex_highlighting = false,
  },

  -- Enable indentation based on Tree-sitter
  indent = {
    enable = true,
  },

  -- Rainbow parentheses/braces
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight non-bracket delimiters like HTML tags
    max_file_lines = nil, -- Disable for files with more than n lines
  }
}


-- Set theme (do last)
vim.cmd('colorscheme rose-pine-moon')
kumar798@data:~/.config/nvim$ nvim init.lua 
kumar798@data:~/.config/nvim$ cat init.lua 
-- 80 character ruler
vim.opt.colorcolumn = "80"

-- Display line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight current line
vim.opt.cursorline = true

-- Display current line and column on the status line
vim.opt.ruler = true

-- Set tabs to be 2 spaces wide
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Automatically indent new lines
vim.opt.autoindent = true

-- Highlight search results
vim.opt.hlsearch = true

-- Incremental search
vim.opt.incsearch = true

-- Automatically use case-sensitive search only when uppercase letters are used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Escape clears search highlight
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- Enable mouse support
vim.opt.mouse = "a"

-- Keep 7 lines visible while scrolling
vim.opt.scrolloff = 7

-- Center next/previous search result
vim.keymap.set("n", "n", "nzz", { noremap = true, silent = true })
vim.keymap.set("n", "N", "Nzz", { noremap = true, silent = true })

-- Show whitespace characters
vim.opt.list = true
-- vim.opt.listchars = { space = "·", tab = "→ ", trail = "•" }
vim.opt.listchars = { tab = "→ ", trail = "•" }

-- True color
vim.opt.termguicolors = true

-- Enable filetype detection and syntax highlighting
vim.cmd("filetype on")
vim.cmd("syntax on")

-- Bind control-e to file explorer
vim.keymap.set("n", "<C-e>", ":Ex<CR>", { noremap = true, silent = true })



-- Automatically install packer.nvim if not already installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Packages
require('packer').startup(function(use)
  -- Manage packer itself
  use 'wbthomason/packer.nvim'

  -- Example plugins
  -- use 'nvim-lua/plenary.nvim'              -- Lua helper functions
  -- use 'nvim-telescope/telescope.nvim'      -- Fuzzy finder
  -- use 'neovim/nvim-lspconfig'              -- Built-in LSP client

  -- Treesitter for syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  -- Rainbow parentheses/braces
  use "p00f/nvim-ts-rainbow"
  -- Theme: Rose Pine
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- Status line
  use "echasnovski/mini.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)


-- Config status line
local statusline = require 'mini.statusline'
statusline.section_location = function()
  return '%2l:%-2v'
end
require('mini.statusline').setup()


-- Treesitter configuration
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "cpp", "lua", "python", "javascript" },

  -- Automatically install missing parsers when opening a buffer
  auto_install = true,

  -- Enable syntax highlighting
  highlight = {
    enable = true, -- Set to false to disable
    additional_vim_regex_highlighting = false,
  },

  -- Enable indentation based on Tree-sitter
  indent = {
    enable = true,
  },

  -- Rainbow parentheses/braces
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight non-bracket delimiters like HTML tags
    max_file_lines = nil, -- Disable for files with more than n lines
  }
}


-- Set theme (do last)
vim.cmd('colorscheme rose-pine-moon')
