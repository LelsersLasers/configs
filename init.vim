set showmatch               " show matching brackets.
set ignorecase              " case insensitive matching
set mouse=a                 " middle-click paste with mouse
set hlsearch                " highlight search results
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allows auto-indenting depending on file type
filetype plugin on
syntax enable
set tabstop=4               " number of columns occupied by a tab character
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set smarttab

call plug#begin()

Plug 'https://github.com/arcticicestudio/nord-vim' " Color scheme for Nord
Plug 'https://github.com/vim-airline/vim-airline' " Info bar at bottom
Plug 'https://github.com/preservim/nerdtree' " File tree
Plug 'scrooloose/nerdcommenter' " For commenting like vscode
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'farmergreg/vim-lastplace' " Remember where you were in the file
Plug 'neoclide/coc.nvim'
Plug 'rust-lang/rust.vim'
Plug 'https://github.com/terryma/vim-multiple-cursors'


call plug#end()


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>

nmap <C-x> <S-v>x
vmap <C-x> <S-v>x

nmap <C-c> <S-v>y
vmap <C-c> <S-v>y

nmap <F8> :TagbarToggle<CR>

nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

:colorscheme nord

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '

let g:airline_symbols.colnr = ':'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
