"Advice and scripts gratefully drawn from the following sources:
" http://sontek.net/turning-vim-into-a-modern-python-ide
" http://blog.dispatched.ch/2009/05/24/vim-as-python-ide/
" http://dancingpenguinsoflight.com/2009/02/python-and-vim-make-your-own-ide
" http://www.jfroche.be/blogging/archive/2007/04/28/write-nicer-python-code
" http://dancingpenguinsoflight.com/2009/02/code-navigation-completion-snippets-in-vim/

"automatically re-source .vimrc when file is changed
:au! BufWritePost $MYVIMRC source $MYVIMRC 

"pathogen
"===============================
"add pathogen location to runtime path 
runtime bundle/vim-pathogen/autoload/pathogen.vim
"invoke pathogen to handle paths and helptags
filetype off "must be off to run commands?
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"ui appearance
"===============================
set t_Co=256 "use 256 colours in terminal
"set t_AB=^[[48;5;%dm "fix terminal colors
"set t_AF=^[[38;5;%dm "fix terminal colors
set background=dark
colors solarized "molokai 
set guifont=Droid\ Sans\ Mono\ 12
set ts=4 softtabstop=4 shiftwidth=4 expandtab
set guioptions-=T  "remove toolbar
set lines=50 "Open window with a height of 50 lines
set columns=160 "Open window with a width of 50 columns
"visual right-margin guide at 80 chars
set colorcolumn=80
"Turn on line numbers
set number
"Toggle line numbers and fold column for easy copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"smart case sensitivity in searching
set ignorecase
set smartcase

"enable Greek keyboard, switch with <c-^> in insert or command mode
"set keymap=greek_polytonic
"set encoding=utf-8
"set inputenc=utf-8
"set fenc=utf-8

"navigation shortcuts
"=================================
"remap keys to move between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"map shortcuts to cycle through buffers
nnoremap <leader><Tab> :bnext<CR>
nnoremap <leader><S-Tab> :bprevious<CR>

"utility shortcuts
"=================================
"map shortcut to cut and paste with system clipboard
nnoremap <leader>ey <Esc>"+y
nnoremap <leader>ep <Esc>"+p
"map key to strip trailing spaces
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

"plugin shortcuts
"=================================
"map key to activate TODO tasklist
map <leader>td <Plug>TaskList
"map key to open Gundo revision history
map <leader>g :GundoToggle<CR>
"bind shortcut for nerdtree
map <leader>n :NERDTreeToggle<CR>
"bind shortcuts for rope redefinition and renaming
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
"bind shortcut for ack fuzzy filesearch
nmap <leader>a <Esc>:Ack!
"bind shortcut to yankring
nnoremap <leader>y :YRShow<CR>
"bind shortcut for bclose
nmap <leader>bd :Kwbd<CR>
"set pep8 to hotkey
let g:pep8_map='<leader>8'

"plugin settings
"=================================
"configure vimroom settings
let g:vimroom_background='#efefef'
let g:vimroom_min_sidebar_width='5'
let g:vimroom_width='80'

"configure NERDTree settings
let NERDTreeShowBookmarks=1
autocmd VimEnter * NERDTree
"autocmd BufEnter * NERDTreeMirror

"filetype settings
"=================================
syntax on "use syntax highlighting
filetype on "autodetect filetypes
filetype plugin indent on "use specified indenting for filetype

"hi Folded guibg=#1B1D1E guifg=#666 gui=italic
"hi Foldcolumn guibg=#1B1D1E guifg=#666 gui=italic
"hi Linenr guibg=#1B1D1E guifg=#666 gui=none

"working with less css files
"===========================
au BufNewFile,BufRead *.less setlocal filetype=less

"working with text files
"=======================
au BufNewFile,BufRead *.txt set filetype=pandoc
au FileType text,markdown,pandoc set colorcolumn=0
au FileType text,markdown,pandoc set foldcolumn=6
au FileType text,markdown,pandoc set nonumber

"working with python files
"=========================

"code folding
set foldmethod=indent
set foldlevel=99
""set pyflakes to skip using quickfix window
"let g:pyflakes_use_quickfix = 0
"enable python autocompletion
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
" Execute python file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>
" automatically run pylint on Python files when saving buffer
autocmd BufWrite *.{py} :call Pylint()

"working with web2py files
"==========================
au BufNewFile,BufRead *.load set filetype=html

" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

"function to strip trailing whitespace from all lines
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

"function to run pylint on current buffer
"command Pylint :call Pylint()
function! Pylint()
    setlocal makeprg=(echo\ '[%]';\ pylint\ %)
    setlocal efm=%+P[%f],%t:\ %#%l:%m
    silent make
    cwindow
    endfunction

"automatically strip trailing spaces from python and javascript
"files when saving buffer
autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()

"Add name of current Git branch to vim statusline
" %{fugitive#statusline()}

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
