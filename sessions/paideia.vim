" ~/.vim/sessions/paideia.vim: Vim session script.
" Created by session.vim 1.5 on 15 May 2012 at 19:21:15.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLt
silent! set guifont=Inconsolata\ Regular\ 11
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'molokai' | colorscheme molokai | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +14 web/web2py/applications/paideia/models/paideia.py
badd +1 web/web2py/applications/topoi/views/plugin_ajaxselect/set_widget.load
badd +2 web/web2py/applications/topoi/static/plugin_ajaxselect/plugin_ajaxselect.css
badd +0 web/web2py/applications/topoi/static/plugin_ajaxselect/plugin_ajaxselect.js
badd +0 web/web2py/applications/topoi/modules/plugin_ajaxselect.py
silent! argdel *
set lines=62 columns=190
edit web/web2py/applications/topoi/static/plugin_ajaxselect/plugin_ajaxselect.js
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 31) / 62)
exe '2resize ' . ((&lines * 28 + 31) / 62)
exe '3resize ' . ((&lines * 29 + 31) / 62)
argglobal
enew
file -MiniBufExplorer-
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
3
silent! normal zo
9
silent! normal zo
11
silent! normal zo
13
silent! normal zo
11
silent! normal zo
3
silent! normal zo
26
silent! normal zo
31
silent! normal zo
33
silent! normal zo
35
silent! normal zo
33
silent! normal zo
26
silent! normal zo
let s:l = 1 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 032l
wincmd w
argglobal
edit web/web2py/applications/topoi/modules/plugin_ajaxselect.py
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
7
silent! normal zo
83
silent! normal zo
83
silent! normal zo
262
silent! normal zo
286
silent! normal zo
299
silent! normal zo
303
silent! normal zo
303
silent! normal zo
299
silent! normal zo
286
silent! normal zo
7
silent! normal zo
let s:l = 308 - ((9 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
308
normal! 033l
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 1 + 31) / 62)
exe '2resize ' . ((&lines * 28 + 31) / 62)
exe '3resize ' . ((&lines * 29 + 31) / 62)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
2wincmd w

" vim: ft=vim ro nowrap smc=128
