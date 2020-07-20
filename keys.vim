" Mapeamento de Teclas 
let mapleader="\<space>"
nnoremap <leader>; A;<ESC>

map <F5>              : source ~/.vimrc <CR>
map <C-F5>            : PluginInstall <CR>
map <F12>             : !ctags -R .<cr>
nmap <F7>             : NERDTreeToggle <CR>
imap <F7> <ESC>       : NERDTreeToggle <CR>

nnoremap <C-s> <ESC>  : w! <CR>
nnoremap <C-q> <ESC>  : q! <CR>
nnoremap <C-e>        : tabclose <CR>
nnoremap <S-t>        : tabnew <CR>
nnoremap <S-tab>      : tabn <CR>
nnoremap <C-PageDown> : tabp <CR>
inoremap <C-s> <ESC>  : w! <CR>

nnoremap <C-p>        : Files <CR>
inoremap <C-p> <ESC>  : Files <CR>
nnoremap <C-i>        : FZF <CR>

inoremap <F10> <C-R>=strftime('%s') <CR>

