" Mapeamento de Teclas 
let mapleader="\<space>"
nnoremap <leader>; A;<ESC>

map <F5>              :source ~/.vimrc <CR>
map <C-F5>            :PluginInstall <CR>
nmap <F7>             :NERDTreeToggle <CR>
imap <F7> <ESC>       :NERDTreeToggle <CR>

nnoremap <C-s> <ESC>  :w! <CR>
nnoremap <C-q> <ESC>  :q! <CR>
nnoremap <C-e>        :tabclose <CR>
nnoremap <C-t>        :tabnew <CR>
nnoremap <S-tab>      :tabn <CR>
nnoremap <C-PageDown> :tabp <CR>
inoremap <C-s> <ESC>  :w! <CR>

nnoremap <C-p>        :Files <CR>
inoremap <C-p> <ESC>  :Files <CR>
nnoremap <C-i>        :FZF <CR>

inoremap <F10> <C-R>=strftime('%s') <CR>

" Seta configurações do arquvio 

" set background=dark
set autoindent            
set background=light
set confirm
set cursorline            
set encoding=UTF-8
set history=500
set hlsearch
set ignorecase
set incsearch
set nocompatible              
set noerrorbells
set nowrap
set number
set relativenumber
set smartcase
set smartindent           
set softtabstop=4
set sw=4
set t_Co=256
set t_vb=
set term=xterm-256color
set ts=4
set updatetime=250
set visualbell
set wildmenu

set formatexpr=xmlformat#Format()
