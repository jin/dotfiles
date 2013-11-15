set nonumber
set relativenumber
set encoding=utf-8
set mouse=a

set nobackup
" no viminfo files
set viminfo= 
" set backupdir=~/.vim/backup
" set directory=~/.vim/backup

"" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab "" Indent start of lines with shiftwidth, not tabstop

"" Searching stuff
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Soft wrap long lines
set wrap

"" Highlight trailing whitespaces
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

"" ..but don't do that in html and xml files
autocmd filetype html,xml set listchars-=tab:>.

"" Python PEP8 style
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

"" Use system clipboard
set clipboard=unnamed

"" Persistent undo
set undofile
set undodir=/tmp/

"" MacVim default font and size
set guifont=Monaco:h12

"" No error and visual bells
set noerrorbells
set visualbell t_vb=

"" Keep at least 5 lines around cursor
set scrolloff=5

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

"" Sudo write a file
cmap w!! w !sudo tee % >/dev/null

"" Go to previous file
map <Leader>p <C-^>

"" Yank whole file
map yA :%y+<CR>


"""""""""""""
"""Plugins"""
"""""""""""""

"" open ctags bar
nnoremap <silent> <Leader>b :TagbarToggle<CR>


"" Command-T
let g:CommandTMaxHeight=5

"" NERDTree
let g:NERDTreeWinSize = 20

"" Tagbar
let g:tagbar_width = 30


"" vim-notes
:let g:notes_directories = ['~/Dropbox/notes', '~/Documents/notes/']

""" NeoBundle stuff """
if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'git://git.wincent.com/command-t.git'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tpope/vim-ragtag'
NeoBundle 'vim-scripts/AutoComplPop'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "garbas/vim-snipmate"
NeoBundle "honza/vim-snippets"
NeoBundle "vim-scripts/Colour-Sampler-Pack"
NeoBundle "haskell.vim"
NeoBundle "tpope/vim-commentary"
NeoBundle "majutsushi/tagbar"

filetype plugin indent on
syntax enable

"" Default color scheme
colorscheme gentooish 

" Installation check.
NeoBundleCheck
