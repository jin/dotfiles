" NeoBundle
" ---------------------------------------------

if has('vim_starting')
   set nocompatible               " Be iMproved
   set runtimepath=~/.vim/doload/*,/usr/share/vim/vimfiles/,/usr/local/Cellar/vim/7.4.273/share/vim/vim74/,/usr/share/vim/vim73,/usr/share/vim/vimfiles/after,~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Git wrapper, needed for powerline
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tpope/vim-ragtag'

" Runs code through external parser to check for syntatic errors
NeoBundle 'scrooloose/syntastic'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'

NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'

" file browser
NeoBundle 'scrooloose/nerdtree'

" pretty themes
NeoBundle "vim-scripts/Colour-Sampler-Pack"

" easy commenting with gc
NeoBundle "tpope/vim-commentary"

" buffer to list tags
NeoBundle "majutsushi/tagbar"

" status bar
NeoBundle "Lokaltog/vim-powerline"

" syntax highlighting/indentation etc for Rust lang
NeoBundle "wting/rust.vim"

" fuzzy file finder
NeoBundle "kien/ctrlp.vim"

" for ruby on rails
NeoBundle "tpope/vim-rails"

" for bundler
NeoBundle "tpope/vim-bundler"

" for ruby handling and autocompletion
NeoBundle "vim-ruby/vim-ruby"

" autocompletion
NeoBundle "Shougo/neocomplete.vim"

" for ruby
NeoBundle "tpope/vim-endwise"

" for coffeescript
NeoBundle "kchmck/vim-coffee-script"

" " for javascript
NeoBundle "jelera/vim-javascript-syntax", {'autoload': {'filetypes': ['javascript']}}

" less syntax highlighting
NeoBundle "genoma/vim-less"

" for rubymotion
NeoBundle "rcyrus/snipmate-snippets-rubymotion"

" rake
NeoBundle "tpope/vim-rake"

" Easy grepping
NeoBundle "vim-scripts/EasyGrep"

" Previewing markup files such as markdown, rdoc, html with <Leader>P
NeoBundle "greyblake/vim-preview"

" Haskell syntax highlight
NeoBundle "travitch/hasksyn"

" gruvbox colorscheme
NeoBundle "morhetz/gruvbox"

" emmet / HTML
NeoBundle "mattn/emmet-vim"

" for netrw
NeoBundle "eiginn/netrw"

" slim syntax highlighting
NeoBundle 'slim-template/vim-slim'

" Pretty JSON
NeoBundle "elzr/vim-json"

" Exchange regions of words with cx
NeoBundle "tommcdo/vim-exchange"

" Inline Ruby evaluation
NeoBundle 't9md/vim-ruby-xmpfilter'

" Swift
NeoBundle 'Keithbsmiley/swift.vim'

" Readline keybindings
NeoBundle 'tpope/vim-rsi'

" align
NeoBundle 'godlygeek/tabular'
NeoBundle "junegunn/vim-easy-align"

" colorscheme
NeoBundle "trusktr/seti.vim"

NeoBundle 'fatih/vim-go'

NeoBundle "vim-scripts/brainfuck-syntax"

" Installation check.
NeoBundleCheck

call neobundle#end()

set nocompatible
set number relativenumber
set encoding=utf-8
set laststatus=2 " Needed for Powerline
set mouse=a

" Suppress default message at launch
set shortmess+=I

" Increase performance when dealing with long strings
set lazyredraw

" set nobackup
" no viminfo files
set viminfo=
set backupdir=/tmp
set directory=/tmp

"" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab "" Indent start of lines with shiftwidth, not tabstop

"" Nicer autocomplete in command mode
set wildmode=longest,list

" Allow backspace to work everywhere
set backspace=indent,eol,start

"" Enable vim omnicompletion
set omnifunc=syntaxcomplete#Complete

"" Soft wrap long lines
set wrap

"" Searching stuff
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Highlight trailing whitespaces
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.

"" ..but don't do that in html and xml files
autocmd filetype html,xml set listchars-=tab:>.

"" For markdown and text files
" autocmd BufRead,BufNewFile *.md,*.txt,*.mdown,*.markdown setlocal spell spelllang=en_us textwidth=79 complete+=kspell
autocmd BufRead,BufNewFile *.md,*.txt,*.mdown,*.markdown setlocal textwidth=79 complete+=kspell

"" Python PEP8 style
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

"" Java style
au FileType java set softtabstop=4 tabstop=4 shiftwidth=4

"" Use system clipboard
set clipboard=unnamed

"" Persistent undo
set undofile
set undodir=/tmp

"" MacVim default font and size
set guifont=Inconsolata-dz:h12

"" No error and visual bells
set noerrorbells
set visualbell t_vb=

"" Keep at least 5 lines around cursor
set scrolloff=5

"" Set vsp and sp to open a new pane to the right and below by default
set splitbelow
set splitright

"""""""""""""""""""
""""Keymappings""""
"""""""""""""""""""
"" Set <leader> to ','
let mapleader = ","

"" Remap ESC
" imap kj <Esc>

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
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

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

"" For rcodetools/xmpfilter ruby inline evaluation
nmap <buffer> <Leader>r <Plug>(xmpfilter-run)
xmap <buffer> <Leader>r <Plug>(xmpfilter-run)
imap <buffer> <Leader>r <Plug>(xmpfilter-run)
nmap <buffer> <Leader>m <Plug>(xmpfilter-mark)
xmap <buffer> <Leader>m <Plug>(xmpfilter-mark)
imap <buffer> <Leader>m <Plug>(xmpfilter-mark)

"""""""""""""
"""Plugins"""
"""""""""""""

"" YCM
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"" Command-T
let g:CommandTMaxHeight=5

"" NERDTree
let g:NERDTreeWinSize = 20

"" Tagbar
let g:tagbar_width = 30

"" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"" Neocomplete
let g:neocomplete#enable_at_startup = 1

" Rails autocomplete
" let g:rubycomplete_rails = 1

"" Disable delimiteMate for Rust source
let delimitMate_excluded_ft = "rust,ml,ocaml"

" Automatically enter
" au VimEnter * Tagbar
" au VimEnter * NERDTree

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules/*

let g:jsx_ext_required = 0

" Ocaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute ":source " . "/Users/jin/.opam/system/share/vim/syntax/ocp-indent.vim"

filetype plugin indent on
syntax enable

colorscheme seti
