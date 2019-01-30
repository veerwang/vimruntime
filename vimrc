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
" merginal plugin
nmap <leader>br :MerginalToggle<CR>
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
let g:airline_theme='papercolor'
"let g:airline_theme='badwolf'
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
"5) tagbar
map tb :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
highlight TagbarScope guifg=Green ctermfg=Green
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"6) NERDTree configration
map <F4> :NERDTreeToggle<cr>
let NERDTreeWinPos="left"
let NERDTreeShowBookmarks=1
"7) easymotion set
map ss <Plug>(easymotion-s)
let g:EasyMotion_force_csapprox = 1
"8) Show undo tree
nmap <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLayout=2
" Persistent undo
set undofile
set undodir=~/.vim/undodir
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [Z] my short key define 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"1) open help documentaion
nmap <leader>h :tab help<cr>

"2) show the version information
nmap <leader>v :version<cr>

"3) close the table
"Ctrl-v Ctrl-c input the ^C
nmap  :close<cr>
nmap  :qall<cr>

"5) Alt-w write the file
" Ctrl-v Alt-w: to input ^[w charactor
nmap w :w <cr>

"6) For auto rename plugin
nmap <leader>ren :Renamer <cr>
nmap <leader>ree :Ren <cr>

"7) Quickfix window
nmap o :cope<cr>
nmap c :ccl<cr>
nmap n :cn<cr>
nmap p :cp<cr>

"8) Edit my confirature file
nmap <leader>c :edit ~/.vimrc <cr>

"9) Edit my vim script
nmap <leader>kt :edit ~/.vim/plugin/makescript.vim <cr>

"10) Favorite filetype
set ffs=unix,dos,mac
nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

"11) binary file edit 
nmap <leader>eb :%!xxd<cr>
nmap <leader>rb :%!xxd -r<cr>

"12) Tab operation
nmap <silent><leader>tn :tabnew<cr>
nmap <silent><leader><left> :tabmove -1<cr>
nmap <silent><leader><right> :tabmove +1<cr>
nmap <silent><leader><down> :$tabmove<cr>
nmap <silent><leader><up> :0tabmove<cr>

"13) adjust window width
nmap <leader><leader>n :vertical res -5 <cr>
nmap <leader><leader>m :vertical res +5 <cr>
nmap <leader><leader>p :res -5 <cr>
nmap <leader><leader>l :res +5 <cr>
