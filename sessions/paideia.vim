" ~/.vim/sessions/paideia.vim: Vim session script.
" Created by session.vim 1.5 on 24 May 2012 at 14:43:15.
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
badd +65 web/web2py/applications/topoi/static/plugin_ajaxselect/plugin_ajaxselect.js
badd +171 web/web2py/applications/paideia/controllers/plugin_listandedit.py
badd +0 web/web2py/w2ptools.py
silent! argdel *
set lines=41 columns=147
edit web/web2py/w2ptools.py
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 1 + 20) / 41)
exe '2resize ' . ((&lines * 37 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 45 + 73) / 147)
exe '3resize ' . ((&lines * 37 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 101 + 73) / 147)
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
enew
" file NERD_tree_1
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
23
silent! normal zo
26
silent! normal zo
29
silent! normal zo
38
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
39
silent! normal zo
38
silent! normal zo
29
silent! normal zo
64
silent! normal zo
78
silent! normal zo
82
silent! normal zo
64
silent! normal zo
133
silent! normal zo
142
silent! normal zo
158
silent! normal zo
158
silent! normal zo
142
silent! normal zo
178
silent! normal zo
214
silent! normal zo
133
silent! normal zo
23
silent! normal zo
let s:l = 216 - ((36 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
216
normal! 019l
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 1 + 20) / 41)
exe '2resize ' . ((&lines * 37 + 20) / 41)
exe 'vert 2resize ' . ((&columns * 45 + 73) / 147)
exe '3resize ' . ((&lines * 37 + 20) / 41)
exe 'vert 3resize ' . ((&columns * 101 + 73) / 147)
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
let s:bufnr = bufnr("%")
NERDTree ~/
execute "bwipeout" s:bufnr
1resize 1|vert 1resize 147|2resize 37|vert 2resize 45|3resize 37|vert 3resize 101|
tabnext 1
3wincmd w

" vim: ft=vim ro nowrap smc=128