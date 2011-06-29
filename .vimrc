"" Use vim settings instead of vi settings
set nocompatible

"" Set filetype to on only after loading pathogen
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

"" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

"" Set backup dirs
set backup
set backupdir=~/Dropbox/work/vim/backup
set directory=~/Dropbox/work/vim/tmp

"" Clear all auto commands
autocmd!

"" Support all three newline formats
set fileformats=unix,dos,mac

"" No viminfo files
set viminfo=

"" More undo!
set undolevels=1000


""""""""
"""UI"""
""""""""
syntax on
set background=dark
set title
set linebreak
set nolist
set showmatch

"" Set command line height explicitly
set cmdheight=1

"" Show partial command in status line
set showcmd

"" Show line numbers
set number

"" Show current position at bottom
set ruler

"" No error and visual bells
set noerrorbells
set visualbell t_vb=

"" No redrawing while in macros
set lazyredraw

"" Keep at least 5 lines around cursor
set scrolloff=5

"" Soft wrap long lines
set wrap

"" Pyflakes uses SpellBad to highlight.
hi clear SpellBad
hi SpellBad cterm=underline term=underline

"" Highlight lines longer than 80 columns
hi OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/


""""""""""""""""""""""""
"""Searching behavior"""
""""""""""""""""""""""""
"" Set case insensitivity
set ignorecase

"" Unless there's a capital letter
set smartcase

"" Highlight results
set hlsearch

"" Search while typing
set incsearch


""""""""""""""""""""""""""""""""
"""Tabulation and indentation"""
""""""""""""""""""""""""""""""""
"" set the cursor at same indent as line above
set autoindent                  

"" Set tab to 4 spaces
set tabstop=4

set expandtab
set smarttab

"" When hitting <BS>, act as though a tab is removed
set softtabstop=4

"" 4 spaces for autoindents
set shiftwidth=4

"" Code folding
set foldmethod=indent
set foldlevel=99

"" Python Tab Completion and Documentation
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

""""""""""""""""""""
"""Keymappings :D"""
""""""""""""""""""""
"" Set <leader> to ','
let mapleader = ","

"" Maintain selection after indentation
vmap > >gv
vmap < <gv

"" Quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Split windows specified explicitly
nnoremap <C-w>s :sp<cr>

"" Set ':' to ';'
nnoremap ; :

"" 'j' and 'k' as they should be
nnoremap j gj
nnoremap k gk

"" Remove all trialing whitespaces from file
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

"" Run python script
nnoremap <F8> :!python %<CR>

"" Turn off highlighting after search
map <leader><space> :noh<cr>

"" Moves cursor to the midscreen while going through search terms
nnoremap N Nzz
nnoremap n nzz
