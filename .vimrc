"""""""""""
"""Admin"""
"""""""""""
"" Use vim settings instead of vi settings
set nocompatible

"" Clear all auto commands
autocmd!

"" Set filetype to on only after loading pathogen
filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
filetype plugin indent on

"" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

"" No backup files
set nobackup
"set noswapfile

"" No viminfo files
set viminfo=

"" Support all three newline formats
set fileformats=unix,dos,mac

"" More undo!
set undolevels=1000

"" Persistent undo
set undofile
set undodir=/tmp/

"" Hide buffers instead of closing them, open files w/o saving/undo changes 
set hidden

"" Automatically cd into the directory the file is in
"set autochdir


""""""""""""
"""Vundle"""
""""""""""""
"" Initialize
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"" Required
Bundle 'gmarik/vundle'

"" Custom
Bundle 'L9'
Bundle 'FuzzyFinder'

Bundle 'Command-T'

Bundle 'snipMate'
Bundle 'comments.vim'
Bundle 'delimitMate.vim'
Bundle 'fugitive.vim'
Bundle 'endwise.vim'
Bundle 'ragtag.vim'

Bundle 'rails.vim'
Bundle 'ruby.vim'
Bundle 'python.vim'


""""""""
"""UI"""
""""""""
syntax on
set background=dark
set title
set linebreak
set showmatch

"" Show cursorlines and columns
"set cursorline
"set cursorcolumn

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

"" Highlight trailing whitespaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

"" ..but don't do that in html and xml files
autocmd filetype html,xml set listchars-=tab:>.


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

"" Copy previous indentation on autoindenting
set copyindent

"" 4 spaces for autoindentation
set shiftwidth=4

"" Set tab to 4 spaces
set tabstop=4

"" Convert tab to spaces
set expandtab

"" Indent start of lines with shiftwidth, not tabstop
set smarttab

"" When hitting <BS>, act as though a tab is removed
set softtabstop=4

"" Code folding
set foldmethod=indent
set foldlevel=99


""""""""""""""""""""
"""Keymappings :D"""
""""""""""""""""""""
"" Set <leader> to ','
let mapleader = ","

"" Remap ESC
imap kj <Esc>

"" Maintain selection after indentation
vmap > >gv
vmap < <gv

"" Moves cursor to the midscreen while going through search terms
nnoremap N Nzz
nnoremap n nzz

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

"" No arrow keys for vimmers!
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"" Remove all trialing whitespaces from file
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

"" Turn off highlighting after search
map <leader><space> :noh<CR>

"" Execute script
nnoremap <F8><F8> :!./%<CR>

"" Toggle paste mode in insert mode, prevent vim from screwing up indentation
set pastetoggle=<F2>

"" Sudo write a file
cmap w!! w !sudo tee % >/dev/null

"" Insert newline without entering insert mode
"map O O<Esc>
map <Enter> o<Esc>

"" Go to next line from insert mode without disrupting current line
imap <Enter> <Esc>o


"""""""""""""""""""""
"""MiniBufExplorer"""
"""""""""""""""""""""
"" Toggle MiniBufExplorer
map <F6><F6> <leader>mbt<CR>

"" Set max height of MBE window
let g:miniBufExplMaxSize = 2

"" Don't show buffer numbers
let g:miniBufExplShowBufNumbers = 0


""""""""""""""
"""NERDTree"""
""""""""""""""
"" Toggle NERDTree
nnoremap <F7><F7> :NERDTreeToggle<CR>

"""""""""""""""""
"""FuzzyFinder"""
"""""""""""""""""
nnoremap <leader>f :FufFile<CR>

"""""""""""""""
"""Command-T"""
"""""""""""""""
nnoremap <leader>t :CommandT<CR>


"""""""""""""""""""""""
"""Language Specific"""
"""""""""""""""""""""""

"""" Python
"" Python Tab Completion and Documentation
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"" Pyflakes uses SpellBad to highlight.
hi clear SpellBad
hi SpellBad cterm=underline term=underline


"""" Ruby
"" Set .mobile.erb extensions to html syntax
autocmd BufNewFile,BufRead *.mobile.erb let b:eruby_subtype = 'html'

"""" SCSS
""
au BufRead,BufNewFile *.scss set filetype=scss
