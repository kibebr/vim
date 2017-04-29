"set guifont=Source_Code_Pro_Medium:h11:cANSI
"set guifont=Consolas:h13:cANSI
"set guifont=CamingoCode:h12:cANSI
"set guifont=Hack:h11:cANSI
"set guifont=Courier_New:h10:b:cANSI
set guifont=Cousine:h10:b:cANSI

" GUI options : menu, toolbar, scrollbars.
" Add the 'm' letter to have the menu back.
set guioptions=egrLt
set statusline=%F
set columns=174
set lines=55
winpos 360 0

"tab character
set shiftwidth=2 " indendation level
set tabstop=2
set softtabstop=0
"Set noexpandtab if you want real tabs instead of spaces
set expandtab

" Minimal number of lines to keep above and below buffer.
set scrolloff=7

" Custom vim settings per file
set modeline

set nocursorline
syntax on
set hidden
set number
set autoread
set noswapfile
set incsearch
set hlsearch
set shiftround
set showmatch
set ignorecase
set smartcase
set incsearch
set nowrap
set clipboard=unnamed

set fileformats+=dos

" Alt-codes show properly in this code page.
set encoding=cp850

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tired of clearing highlighted searches by searching for �ldsfhjkhgakjks�? Use this:
nmap <silent> ,. :nohlsearch<CR>

set regexpengine=1
set nocompatible

" Quickly edit/reload the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" Color theme: evening, desert, slate, blue, delek.
colors muratori

set textwidth=200
filetype plugin on
set backspace=indent,eol,start

" Disable bell and flashing.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

set cindent
set cinoptions+=(0)
set foldmethod=marker
set foldmarker=>>>,<<<

set grepprg=grepw32.exe

" --fields=[+/-]flags
"        a    Access (or export) of class members
"        f    File-restricted scoping [enabled]
"        i    Inheritance information
"        k    Kind of tag as a single letter [enabled]
"        K    Kind of tag as full name
"        l    Language of source file containing tag
"        m    Implementation information
"        n    Line number of tag definition
"        s    Scope of tag definition [enabled]
"        S    Signature of routine (e.g. prototype or parameter list)
"        z    Include the "kind:" key in kind field
"        t    Type and name of a variable or typedef as "typeref:" field [enabled]
let g:indexer_ctagsCommandLineOptions="--fields=+ksSlnz --C-kinds=+p --C++-kinds=+p"

" C dev
set makeprg=build.bat

" C# dev
"set errorformat=%f(%l\\,%c):\ %t%*[^\ ]\ CS%n:\ %m
"set makeprg=msbuild\ /nologo\ /v:q\ /property:GenerateFullPaths=true

nmap <leader>js :%!jq .<CR>:set filetype=json<CR>
nmap <C-s> :w<CR>
inoremap <S-CR> <Esc>
"nmap <F1> :NERDTreeToggle<CR>
nmap <F2> :Tlist<CR>
nmap <F4> :wa<CR>:make!<CR>
nmap <F5> :!deploy<CR><CR>
map <leader>q <leader>bd<CR>

nmap [[ :cprev<CR>
nmap ]] :cnext<CR>
nmap \\ :cc<CR>

let g:AutoPairsCenterLine=0
let g:Tlist_Close_On_Select=0
let g:Tlist_Use_Right_Window=1
let g:Tlist_GainFocus_On_ToggleOpen=1