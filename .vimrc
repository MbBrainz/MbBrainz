# Basic Vim Configuration

# Enable syntax highlighting
syntax on

# Set the colorscheme
colorscheme desert

# Show line numbers
set number

# Enable relative line numbers
set relativenumber

# Highlight the current line
set cursorline

# Enable mouse support
set mouse=a

# Set tabs and indentation
set tabstop=4       " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent
set expandtab       " Use spaces instead of tabs
set autoindent      " Copy indent from current line when starting a new line
set smartindent     " Smart autoindenting for C-like programs

# Enable line wrapping
set wrap

# Search settings
set ignorecase      " Ignore case while searching
set smartcase       " Override ignorecase if search contains capitals
set hlsearch        " Highlight search matches
set incsearch       " Show search matches as you type

# Enable persistent undo
set undofile

# Set the status line
set laststatus=2

# Enable syntax folding
set foldmethod=syntax
set foldlevel=99

# Enable clipboard integration
set clipboard=unnamedplus

# Disable swapfile
set noswapfile

# Use a larger history size
set history=1000

# Display command in the last line of the screen
set showcmd

# Enable auto-completion menu
set wildmenu

# Set up basic plugins using Vim's built-in package manager
# Create the directory for plugins if it doesn't exist
if !isdirectory($HOME . '/.vim/pack/plugins/start')
  call mkdir($HOME . '/.vim/pack/plugins/start', 'p')
endif

# Install vim-sensible plugin for sensible default settings
if empty(glob('~/.vim/pack/plugins/start/vim-sensible'))
  !git clone https://github.com/tpope/vim-sensible.git ~/.vim/pack/plugins/start/vim-sensible
endif

# Install vim-airline for a nice status bar
if empty(glob('~/.vim/pack/plugins/start/vim-airline'))
  !git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/plugins/start/vim-airline
endif

# Install vim-surround for surrounding text objects
if empty(glob('~/.vim/pack/plugins/start/vim-surround'))
  !git clone https://github.com/tpope/vim-surround.git ~/.vim/pack/plugins/start/vim-surround
endif

# Source the plugin files
packadd vim-sensible
packadd vim-airline
packadd vim-surround

# Configure vim-airline
let g:airline#extensions#tabline#enabled = 1

# Custom key mappings
nnoremap <C-n> :nohlsearch<CR>  " Clear search highlighting with Ctrl+n
nnoremap <C-s> :w<CR>           " Save with Ctrl+s

# Set the leader key to space
let mapleader = " "

