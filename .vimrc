set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'myusuf3/numbers.vim'
Plugin 'tpope/vim-fugitive'
""Plugin 'davidhalter/jedi-vim'
call vundle#end()            " required
filetype plugin indent on    " required

"==============================================================================
"General settings
"vim behaviour"
set path+=**
set directory=~/.vim/swapfiles/
set mouse=a
filetype on
set ruler
set autoread
set cindent
set foldmethod=manual

"Vim view"
set number
syntax enable
set background=dark
colorscheme desert
set t_Co=256
"hi Normal ctermbg=233
set cursorline
set showcmd
set wildmenu
set showmode
set visualbell

" color, terminal: bg = #003045, cursor = red
highlight ColorColumn ctermbg=23
set colorcolumn=81

set listchars=space:·,tab:>·
set list
set backspace=indent,eol,start

"search options
set incsearch
set hlsearch

"indents"
set autoindent
set cindent

"tabs"
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab

"encoding"
set ff=dos
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.""

"==============================================================================
"Auto completion
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap " ""<Left>
inoremap ' ''<Left>

inoremap (; ();
inoremap [; [];
inoremap {; {};<Left><Left><CR><CR><Up>
inoremap <; <>;

inoremap () ()
inoremap [] []
inoremap {} {}
inoremap <> <>
inoremap "" ""<Left>
inoremap '' ''<Left>

inoremap << <<
inoremap >> >>

"Swap ; and : for faster entering in command mode"
nnoremap ; :
nnoremap : ;

"insert mode keys"
inoremap <C-h> <Esc>i
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>a

"Switch tabs
nnoremap <Left> gT
nnoremap <Right> gt

"Go to normal mode"
inoremap jk <ESC>
inoremap kj <ESC>

"Ctlr+S to save file
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> :w<CR>

"Case insensitive search
nnoremap / /\c
nnoremap ? ?\c

"Speed up keyboard scrolling"
nnoremap <C-Y> 3<C-Y>
nnoremap <C-E> 3<C-E>

"Mouse wheel"
nnoremap <ScrollWheelUp>      6<C-Y>
nnoremap <ScrollWheelDown>    6<C-E>
nnoremap <C-ScrollWheelUp>     <C-U>
nnoremap <C-ScrollWheelDown>   <C-D>

" custom F-key bind
nnoremap <F2> <ESC>:w<CR>
nnoremap <F3> :NERDTreeToggle<CR>
let g:ctrlp_working_path_mode = 0
nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
nnoremap <F5> :wa<CR>:make!<CR>
nnoremap <F8> :!$PWD/.././solution_open.bat<CR>:!./solution_open.bat<CR>
nnoremap <S-F8> :!$PWD/.././generate_solution.bat<CR>:!./generate_solution.bat<CR>
nnoremap <C-F8> :!git submodule update<CR>:!$PWD/.././generate_solution.bat<CR>:!$PWD/.././solution_open.bat<CR>:!./generate_solution.bat<CR>:!./solution_open.bat<CR>
nnoremap <F12> :YcmCompleter GoToDeclaration<CR>
nnoremap <S-F12> :YcmCompleter GoToDefinition<CR>
nnoremap <C-F12> :YcmCompleter GoToInclude <CR>

"nnoremap <silent> n n:call HLNext(0.4)<CR>
"nnoremap <silent> N N:call HLNext(0.4)<CR>

"function! HLNext (blinktime)
"	let [bufnum, lnum, col, off] = getpos('.')
"	let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
"	let target_pat = '\c\%#'.@/
"	let blinks = 3
"	for n in range(1,blinks)
"		let red = matchadd('WhiteOnRed', target_pat, 101)
"		redraw
"		exec 'sleep ' . float2nr(a:blinktime / (2*blinks) * 1000) . 'm'
"		call matchdelete(red)
"		redraw
"		exec 'sleep ' . float2nr(a:blinktime / (2*blinks) * 1000) . 'm'
"	endfor
"endfunction

"==============================================================================
"Plugin settings
