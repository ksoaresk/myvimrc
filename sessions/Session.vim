let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +3 .myvimrc/conf.vim
badd +1 .myvimrc/.vimrc
badd +1 ~/.myvimrc/plugins.vim
badd +0 ~/.myvimrc/php_config.vim
badd +0 ~/.myvimrc/keys.vim
argglobal
%argdel
$argadd .myvimrc/conf.vim
edit ~/.myvimrc/plugins.vim
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 64 + 96) / 193)
exe '2resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 64 + 96) / 193)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 64 + 96) / 193)
exe '4resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 4resize ' . ((&columns * 63 + 96) / 193)
exe '5resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 5resize ' . ((&columns * 63 + 96) / 193)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 45 - ((44 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 0
wincmd w
argglobal
if bufexists("~/.myvimrc/php_config.vim") | buffer ~/.myvimrc/php_config.vim | else | edit ~/.myvimrc/php_config.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 60 - ((22 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
60
normal! 040|
wincmd w
argglobal
if bufexists(".myvimrc/conf.vim") | buffer .myvimrc/conf.vim | else | edit .myvimrc/conf.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 95 - ((4 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
95
normal! 0
wincmd w
argglobal
if bufexists(".myvimrc/.vimrc") | buffer .myvimrc/.vimrc | else | edit .myvimrc/.vimrc | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 011|
wincmd w
argglobal
if bufexists("~/.myvimrc/keys.vim") | buffer ~/.myvimrc/keys.vim | else | edit ~/.myvimrc/keys.vim | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 64 + 96) / 193)
exe '2resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 64 + 96) / 193)
exe '3resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 64 + 96) / 193)
exe '4resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 4resize ' . ((&columns * 63 + 96) / 193)
exe '5resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 5resize ' . ((&columns * 63 + 96) / 193)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=1 winminheight=0 winminwidth=0 shortmess=aoO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
