" ~/.nvim/session/jmap.vim:
" Vim session script.
" Created by session.vim 2.10.1 on 05 August 2015 at 09:25:00.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
call setqflist([])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/apps
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +72 np/jmap/lib/gc.js
badd +1 np/jmap/app.js
badd +42 np/jmap/lib/ge.js
badd +1 np/jmap/lib/gf.js
badd +0 np/jmap/lib/gg.js
argglobal
silent! argdel *
edit np/jmap/lib/gc.js
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 60 - ((41 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
60
normal! 030|
lcd ~/apps
tabedit ~/apps/np/jmap/lib/ge.js
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 54 - ((43 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 067|
lcd ~/apps
tabedit ~/apps/np/jmap/lib/gf.js
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 43 - ((42 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 018|
lcd ~/apps
tabedit ~/apps/np/jmap/lib/gg.js
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 50 - ((16 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 014|
lcd ~/apps
tabedit ~/apps/np/jmap/app.js
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 21 - ((20 * winheight(0) + 37) / 74)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 018|
lcd ~/apps
tabnext 4
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=30 shortmess=aoOTIc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 4
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
