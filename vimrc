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
set relativenumber

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
set tags=./.tags;,.tags

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

"30) set for gtags
" need pip install pygments
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf' " 

"31) set path of system head file
set path+=/usr/local/include

"32) fzf fuzzy finder
set rtp+=/usr/bin/fzf

"33) terminal 
set termwinsize=8x200
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [B] plugin manage segment
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"1) fugitive key map
"map <silent> <f3> :Gstatus<cr>
"move to venu function
" merginal plugin
"2) vim-headerguard 
"add headerguard
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
"let g:airline_theme='papercolor'
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
"5) tagbar
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
highlight TagbarScope guifg=Green ctermfg=Green
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
"6) NERDTree configration
let NERDTreeWinPos="left"
let NERDTreeShowBookmarks=1
"7) easymotion set
map ss <Plug>(easymotion-s)
let g:EasyMotion_force_csapprox = 1
"8) Show undo tree
let g:undotree_WindowLayout=2
" Persistent undo
set undofile
set undodir=~/.vim/undodir
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
"9) Set the ycm configrature,it will first read from current file
let g:ycm_global_ycm_extra_conf = '/home/kevin/.vim/pack/.ycm_extra_conf.py'
let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers.c = ['->', '.', ' ', '(', '[', '&']
let g:ycm_semantic_triggers.cpp = ['->', '.', ' ', '(', '[', '&']
let g:ycm_collect_identifiers_from_tag_files=1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_auto_trigger=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_confirm_extra_conf=0
let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'qf' : 1,
        \ 'notes' : 1,
        \ 'markdown' : 1,
        \ 'unite' : 1,
        \ 'text' : 1,
        \ 'vimwiki' : 1,
        \ 'pandoc' : 1,
        \ 'infolog' : 1,
        \ 'mail' : 1
        \}
let g:ycm_filetype_specific_completion_to_disable = {
        \ 'gitcommit': 1
        \}
"10) gutentags_plus 
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" config project root markers.
let g:gutentags_project_root = ['.root','.svn','.git','.project']
" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')
" change focus to quickfix window after search (optional).
let g:gutentags_plus_switch = 1
"11)jedi for python
"need  jedi and python-syntax plugins
let g:jedi#auto_initialization=1
let g:jedi#completions_command = "<C-N>"
"13) Leadf fuzzy find tool 
"14) vimgitlog
let g:GITLOG_default_mode = 2
map <silent> <f5> :call GITLOG_FlipWindows()<cr>
"15) tig-explore base on tig
"16) vim-vmenu
map <silent> <space><space> :VenuPrint<cr>

let s:programmenu = venu#create('Programe')
call venu#addItem(s:programmenu, 'Add C/C++ Head Flag', ':HeaderguardAdd')
call venu#addItem(s:programmenu, 'File Browse', ':NERDTreeToggle')
call venu#addItem(s:programmenu, 'File Structure', ':TagbarToggle')
call venu#addItem(s:programmenu, 'Undo Tree', ':UndotreeToggle')
call venu#register(s:programmenu)

let s:gitmenu = venu#create('Git')
call venu#addItem(s:gitmenu, 'Git Status', ':Gstatus')
call venu#addItem(s:gitmenu, 'Git Log', ':Gitv')
call venu#addItem(s:gitmenu, 'Git File Log', ':AgitFile')
call venu#addItem(s:gitmenu, 'Git Brnch Log', ':call GITLOG_ToggleWindows()')
call venu#addItem(s:gitmenu, 'Git Branch', ':MerginalToggle')
call venu#addItem(s:gitmenu, 'Tig Browse', ':TigOpenProjectRootDir')
call venu#addItem(s:gitmenu, 'Tig Blame', ':TigBlame')
call venu#register(s:gitmenu)

let s:searchmenu = venu#create('Search')
call venu#addItem(s:searchmenu, 'File Search of Leadf', ':LeaderfFile')
call venu#addItem(s:searchmenu, 'File Search of Ag', ':Ag')
call venu#register(s:searchmenu)

let s:bashmenu = venu#create('Terminal')
call venu#addItem(s:bashmenu, 'Terminal', ':terminal')
call venu#register(s:bashmenu)

let s:vimconfigmenu = venu#create('Config')
call venu#addItem(s:vimconfigmenu, 'Configure Vim', ':edit ~/.vimrc')
call venu#addItem(s:vimconfigmenu, 'Version', ':version')
call venu#addItem(s:vimconfigmenu, 'Vim Help', ':tab help')
call venu#register(s:vimconfigmenu)
"17) rainbow
let g:rainbow_active = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [Z] my short key define 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"1) open help documentaion
"2) show the version information

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


