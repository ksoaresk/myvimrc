" Mapeamento de Teclas 
let mapleader="\<space>"
nnoremap <leader>; A;<ESC>
nnoremap <leader>=> A => 
nnoremap <leader>, A,<ESC>
nnoremap <leader>{ A{<ESC>
nnoremap <leader>bn :bn<CR>

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

" Configura atalho para executar phpunit
nmap  <S-F2>                    :!make unit-test <CR>
imap  <S-F2><ESC>               : !make unit-test <CR>

" ATALHOS PARA PHP REFACTOR ----------------------
" nnoremap <unique> <Leader>rlv :call PhpRenameLocalVariable()<CR>
" nnoremap <unique> <Leader>rcv :call PhpRenameClassVariable()<CR>
" nnoremap <unique> <Leader>rm :call PhpRenameMethod()<CR>
" nnoremap <unique> <Leader>eu :call PhpExtractUse()<CR>
" vnoremap <unique> <Leader>ec :call PhpExtractConst()<CR>
" nnoremap <unique> <Leader>ep :call PhpExtractClassProperty()<CR>
" vnoremap <unique> <Leader>em :call PhpExtractMethod()<CR>
" nnoremap <unique> <Leader>np :call PhpCreateProperty()<CR>
" nnoremap <unique> <Leader>du :call PhpDetectUnusedUseStatements()<CR>
" vnoremap <unique> <Leader>== :call PhpAlignAssigns()<CR>
" nnoremap <unique> <Leader>sg :call PhpCreateSettersAndGetters()<CR>
" nnoremap <unique> <Leader>cog :call PhpCreateGetters()<CR>
" nnoremap <unique> <Leader>da :call PhpDocAll()<CR>
