syntax on

" Mapeamento de Teclas 
let mapleader="\<space>"
nnoremap <leader>; A;<ESC>

map <F5>                    : source ~/.vimrc<CR>
map <C-F5>                  : PluginInstall<CR>

nmap <F7>                   : NERDTreeToggle<CR>
imap <F7> <ESC>             : NERDTreeToggle<CR>

nnoremap <C-s> <ESC>        : w!<CR>
nnoremap <C-q> <ESC>        : q!<CR>
nnoremap <C-w>              : tabclose<CR>
nnoremap <C-t>              : tabnew<CR>
nnoremap <S-tab>            : tabn<CR>
nnoremap <C-PageDown>       : tabp<CR>

inoremap <C-s> <ESC>        : w!<CR>
inoremap <S-tab> <ESC><ESC> : tabn<CR>

" Seta configurações do arquvio 
set ai
set autoindent            
" set background=light
set background=dark
set confirm
set cursorline            
set history=500
set hlsearch
set incsearch
set nocompatible              
set nowrap
set number
set relativenumber
set smartindent           
set softtabstop=4
set sw=4
set ts=4
set wildmenu

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	" Essenciais.
	Plugin 'scrooloose/nerdtree'                    " Barra lateral para navegação de arquivos
	Plugin 'git@github.com:godlygeek/tabular.git'   " Vim tabular para tabulações
	Plugin 'git@github.com:tomtom/tcomment_vim.git' " Para comentar trechos de códgios

    " Codificação
	Plugin 'git@github.com:mattn/emmet-vim.git'     " Emmet html e CSS
	Plugin 'git@github.com:ervandew/supertab.git'   " Super tab para autocompletes entre outros
	
	" Themes
	Plugin 'git@github.com:morhetz/gruvbox.git'
	" End Themes

call vundle#end()

" Configuração do emmet-vim
autocmd FileType html,css EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = ',,'

" Definição de esquema de cores
colorscheme gruvbox
