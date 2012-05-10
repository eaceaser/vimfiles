" General
syntax enable
set autoread

" Interface
set wildmenu
set wildmode=longest:full
set hidden
set nocompatible
set cmdheight=2
set ttyfast
set smartcase
"set cursorline
set hlsearch
set list
set shortmess=atI
set ruler
set listchars=tab:>-,trail:.
set ignorecase
set incsearch
set magic
set mouse=a
set showmatch
set gdefault
set noerrorbells
set completeopt=menuone,longest
set switchbuf=usetab

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'wincent/Command-T'
Bundle 'derekwyatt/vim-scala'

Bundle 'mutewinter/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'

Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'

Bundle 'IndexedSearch'
Bundle 'Shougo/neocomplcache'
Bundle 'acustodioo/vim-tmux'
Bundle 'L9'

Bundle 'sjl/badwolf'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'nanotech/jellybeans.vim'

filetype plugin indent on

" Font
set noantialias
set gfn=fixed-6x13:h13

" colors
set bg=dark

" swaps and backup
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set undofile
set undodir=~/.vim/undo

" enc
set encoding=utf-8

" tabs and indentation
set expandtab
set linebreak
set shiftwidth=2
set tabstop=2
set softtabstop=2
set backspace=2
set autoindent
set smartindent
set nowrap

" statusline
set laststatus=2
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" searching
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,*.class

" folds
" set foldmethod=syntax
" set foldnestmax=2

if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

set makeprg=sbt\ compile
set efm=%E\ %#[error]\ %f:%l:\ %m,%C\ %#[error]\ %p^,%-C%.%#,%Z,
       \%W\ %#[warn]\ %f:%l:\ %m,%C\ %#[warn]\ %p^,%-C%.%#,%Z,
       \%-G%.%#

" let g:zenburn_high_Contrast=1
colorscheme molokai

map <F8> :set number!<CR>
map! <F8> :set number!<CR>

" wtf
"hi scalaNew gui=underline
"hi scalaMethodCall gui=italic
"hi scalaValName gui=underline
"hi scalaVarName gui=underline

let loaded_matchparen = 0

" ---------------
" Neocachecompl
" ---------------
let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=1 "Select the first entry automatically
let g:neocomplcache_enable_cursor_hold_i=1
let g:neocomplcache_cursor_hold_i_time=300
let g:neocomplcache_auto_completion_start_length=1

" ---------------
" Indent Guides
" ---------------
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

" ---------------
"  Powerline
" ---------------
" let g:Powerline_symbols = 'fancy'
let g:Powerline_cache_enabled = 1
