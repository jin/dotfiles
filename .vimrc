filetype on
filetype plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
let mapleader = ","
set backspace=indent,eol,start


"" Set backup dirs
set backup
set backupdir=~/Dropbox/work/vim/backup
set directory=~/Dropbox/work/vim/tmp

"" Clear all auto commands
autocmd! 

"" Don't have to be compatible with vi
set nocompatible

"" Support all three newline formats
set fileformats=unix,dos,mac

"" No viminfo files
set viminfo=



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
hi SpellBad term=standout ctermfg=1 term=underline cterm=underline

"" Highlight lines longer than 80 columns
hi OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"" Quicker window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"" Split windows specified explicitly
nnoremap <C-w>s :sp<cr>


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

"" Turn off highlighting after search
map <leader><space> :noh<cr>


""""""""""""""""""""""""""""""""
"""Tabulation and indentation"""
""""""""""""""""""""""""""""""""
set autoindent                  " set the cursor at same indent as line above
set tabstop=4
set expandtab
set smarttab
set softtabstop=4
set shiftwidth=4
"set preserveindent              " save as much indent structure as possible
""set smartindent                 " try to be smart about indenting (C-style)

"" Maintain selection after indentation
vmap > >gv
vmap < <gv

"-- Code Folding --"
set foldmethod=indent
set foldlevel=99

"-- Python Tab Completion and Documentation --"
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"-- Key mappings --"
"let g:pep8_map='<leader>8'       " PEP8 quickfix?
