""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        			Vim Script Create for Test!
"        								Author: Kevin
"        		 						V3.00
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      The file is seted for the edit programme!                               "
"											       "
"                                                                            Version:   3.00   "
"											       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [A] Basic Configure Item 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1) Hot key define by me
let mapleader=","
nmap <leader>w :w!<CR>

" 2) set the focus on the current line and column
"set cursorline
"set cursorcolumn

" 3) 256 colors display
let g:solarized_termcolors=256

" 4) set the line number 
set nu

" 5) set the syntax on
syntax on

" 6) set file code-write sets
set encoding=utf-8
set fileencoding=utf-8
set fencs=utf-8,gb18030,gbk,gb2312,cp936

" 7) Set the lines of history
set history=400 

" 8)
set clipboard+=unnamed

"9) just show content in single line
set nowrap

"10) make the information no full screen
set nomore

"11) when exit vim save content on screen
set t_ti= t_te=

"12) auto style in C program
set cin

"13) do not backup file when over-written file
set nobackup

"14)set short message cut 
set shortmess=atl

"15)set the tags file name
set tags=tags;

"16) turn the wild menu
set wildmenu

"17) turn off the error bell
set noerrorbells

"18)
set ignorecase

"19)
set autochdir

"20)set search result high light 
set hlsearch

"21)set ruler
set ruler

"22)set ruler
set so=7

"23)set no compatible mode of VIM
set nocompatible

"24)Set to auto read when a file is changed from the outside
set autoread

"25)Have the mouse enabled all the time:
set mouse=a

"26)
set nocp

"27) match {} setting
set showmatch
set matchtime=5

"28)
let $MYEMAIL="kevin.wang2004@hotmail.com"

"29) set the man page display on the top window
let g:viewdoc_open='topleft new'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [B] plugin manage segment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"1) fugitive key map
nmap <leader>gs :Gstatus<cr>
"2) vim-headerguard 
"add headerguard
nmap <leader>hd :HeaderguardAdd<CR>
" vim-headerguard configure
function! g:HeaderguardName()
return "INCLUDED_" . toupper(expand('%:t:gs/[^0-9a-zA-Z_]/_/g'))
endfunction
"3)
set t_Co=256
set background=light
colorscheme badwolf
"4) airline 
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = ' '
"let g:airline_theme='gruvbox'
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_section_c='%F'
let g:airline#extensions#ctrlp#show_adjacent_modes = 1

let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
	if g:airline_theme == 'badwolf'
		for colors in values(a:palette.inactive)
			let colors[3] = 245
		endfor
	endif
endfunction
