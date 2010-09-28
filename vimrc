"set runtimepath^=/usr/local/share/vim/vim-ruby,/usr/local/share/vim/vim-fugitive
set runtimepath^=~/.vim/bundle/vim-pathogen
call pathogen#runtime_append_all_bundles()

syntax on
filetype indent on
filetype plugin on 

set ts=2
set sw=2
set sts=2

set nocompatible
set backspace=2
set hidden
"set foldenable
set showmatch
"set foldlevelstart=10
set guioptions=egm
set title
set ignorecase
set smartcase
set cursorline
set switchbuf=usetab
set shortmess=atI
set softtabstop=2
set expandtab
set incsearch
"set tags=tags
"set tagrelative
set bg=dark
set hlsearch
set mouse=a
set wildmenu
set wildmode=longest:full
set nowrap
set completeopt=menuone,longest
set cmdheight=2
set list
set listchars=tab:>-,trail:.
set ruler
set linebreak
set gdefault
"set gfn=Consolas:h13
"set gfn=Monaco:h11
set gfn=Menlo:h11

" swapfile
set directory=~/.tmp
set swapfile

" statusline
set laststatus=2
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

if has("gui_running")
    colorscheme ir_black
endif

if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

set makeprg=sbt\ compile
set efm=%E\ %#[error]\ %f:%l:\ %m,%C\ %#[error]\ %p^,%-C%.%#,%Z,
       \%W\ %#[warn]\ %f:%l:\ %m,%C\ %#[warn]\ %p^,%-C%.%#,%Z,
       \%-G%.%#

let g:zenburn_high_Contrast=1
"let ruby_fold=1

map <F8> :set number!<CR>
map! <F8> :set number!<CR>

"nnoremap <silent> <C-n>         :FufBuffer<CR>
"nnoremap <silent> <C-[>         :FufRenewCache<CR>
"nnoremap <silent> <C-f>         :FufFileWithCurrentBufferDir<CR>
"nnoremap <silent> <C-p>         :FufFile **/<CR>

" wtf
hi scalaNew gui=underline
hi scalaMethodCall gui=italic
hi scalaValName gui=underline
hi scalaVarName gui=underline
