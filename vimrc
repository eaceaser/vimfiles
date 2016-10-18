call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'PProvost/vim-ps1'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'Valloric/YouCompleteMe'

call plug#end()

filetype plugin on
filetype indent on

set autoread


set ttyfast

" wildmenu
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store


" backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" searching
set hlsearch
set smartcase
set ignorecase
set incsearch

" other interface
set ruler
set cmdheight=2
set hidden

" match brackets
set showmatch
set mat=2

" regex
set magic

" stfu
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" margin
set foldcolumn=1

""""
" Colors
"""""
syntax enable
colorscheme molokai
set background=dark

"""
" Fonts
"""
set encoding=utf8
set antialias
"set gfn=Monaco\ for\ Powerline:h11
if has("gui_macvim")
  set macligatures
endif

set gfn=Fira\ Code:h12


" swaps and backup
set nobackup
set nowb
set directory=~/.vim/tmp
set undofile
set undodir=~/.vim/undo


" tabs and indentation
set expandtab
set smarttab

set shiftwidth=2
set tabstop=2
set softtabstop=2

set linebreak
set tw=500

set autoindent
set smartindent
set nowrap

" statusline
set laststatus=2
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" GUI
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" folds
" set foldmethod=syntax
" set foldnestmax=2

if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

" set makeprg=sbt\ compile
" set efm=%E\ %#[error]\ %f:%l:\ %m,%C\ %#[error]\ %p^,%-C%.%#,%Z,
"        \%W\ %#[warn]\ %f:%l:\ %m,%C\ %#[warn]\ %p^,%-C%.%#,%Z,
"        \%-G%.%#

" let g:zenburn_high_Contrast=1

" Cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul

" wtf
"hi scalaNew gui=underline
"hi scalaMethodCall gui=italic
"hi scalaValName gui=underline
"hi scalaVarName gui=underline

" let loaded_matchparen = 0

"augroup filetypedetect 
"  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig
"augroup END

autocmd FileType mkd setlocal spell

" ---------------
" Indent Guides
" ---------------
" let g:indent_guides_enable_on_vim_startup=1
" let g:indent_guides_auto_colors=0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=black
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

let g:airline_powerline_fonts = 1

" JSON
let g:vim_json_syntax_conceal = 0
