" Mapeamento de Teclas 
let mapleader="\<space>"
nnoremap <leader>; A;<ESC>

map <F5>                      : source ~/.vimrc <CR>
map <c-F5>                    : PluginInstall <CR>
" map <F12>                     : !ctags -R expand("%:p") <CR>

" Navegação nos arquivos NerdTree
nmap <F7>                     : NERDTreeToggle <CR>
imap <F7> <ESC>               : NERDTreeToggle <CR>

" Tagbar navegação em métodos de classes
nmap  <F8>                    : TagbarToggle <CR>
imap  <F8><ESC>               : TagbarToggle <CR>

" Teclas para navegação em buscas no conteúdos dos arquivos com `vimgrep! /expression/g dir|file.ext`
map <F2>                : copen<CR>
map <F3>                : cclose<CR>
map <A-n>               : cnext<CR>
map <A-p>               : cprevious<CR>

nnoremap <C-s> <ESC>    : w! <CR>
nnoremap <C-q> <ESC>    : q! <CR>
nnoremap <C-e>          : tabclose <CR>
nnoremap <S-t>          : tabnew <CR>
nnoremap <S-tab>        : tabn <CR>
nnoremap <C-PageDown>   : tabp <CR>
inoremap <C-s> <ESC>    : w! <CR>

nnoremap <silent> <C-p> : Files <CR>
nnoremap <silent> <C-i> : FZF <CR>

inoremap <F9> <C-R>=strftime('%s') <CR> 
inoremap <leader>exco <C-R>=strftime('%s') <CR> 
