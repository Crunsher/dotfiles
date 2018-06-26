set nocompatible
set t_Co=16
"set expandtab
set shiftwidth=4
set tabstop=4
"set softtabstop=4
"set cindent
set autoindent
set smartindent
filetype plugin on
filetype indent on
call pathogen#infect()
call pathogen#helptags()
syntax on
set background=dark " dark | light "
colorscheme solarized
set nu
set listchars=eol:$,tab:>-,trail:.,extends:>,precedes:<,nbsp:_
set splitbelow
set splitright
set viminfo='20,<1000

"Smart case senstivity for search
"(smartcase only works when ignorecase is set too)
set ignorecase
set smartcase

"vim-latex suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
"See :help map-commands
"n        = Normal only
"v        = Visual only
"i        = Insert only
"         = Normal+Insert+Select only
" nore    = disable recusiveness
"     map = Recursive map

"split window switching
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Make Up and Down Arrows move half a screen instead of 1 line
noremap <Up>   <C-U>
noremap <Down> <C-D>

"BUFFERS Used to be F6,F7. Now used by flake
set hidden
noremap <F2> :bprevious<CR>
noremap <F3> :bnext<CR>

"Because buffers change Flake to use F3 instead of F7
"autocmd FileType python map <buffer> <F3> :call Flake8()<CR>
" DOES NOT WORK FUCK

"Smart Home key
noremap <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0' : '^')
imap <Home> <C-o><Home>

"Access commandwindow with ctrl+f or :cedit
map q: :q
"For dorks
command Wsudo w !sudo tee % > /dev/null
"Jump to next line > 120 chars
command Warnl :/\%>120v./+
"For easy copy-paste
command Cpm :set nonu paste cc=  nolist
"Catch regular caps failure
command WQ :wq

let &colorcolumn="121"
"let g:python_recommended_style=0

autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType puppet set tabstop=4|set shiftwidth=4|set expandtab
