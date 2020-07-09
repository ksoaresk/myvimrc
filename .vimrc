syntax on

" Mapeamento de Teclas 
let mapleader="\<space>"
nnoremap <leader>; A;<ESC>

map <F5>             :source ~/.vimrc <CR>
map <C-F5>           :PluginInstall <CR>

nmap <F7>            :NERDTreeToggle <CR>
imap <F7> <ESC>      :NERDTreeToggle <CR>

inoremap <F10> <C-R>=strftime('%s') <CR>
nnoremap <C-s> <ESC> :w! <CR>
nnoremap <C-q> <ESC> :q! <CR>
nnoremap <C-e>       :tabclose <CR>
nnoremap <C-t>       :tabnew <CR>
nnoremap <S-tab>     :tabn <CR>
nnoremap <C-PageDown>:tabp <CR>

inoremap <C-s> <ESC> :w! <CR>

" Seta configurações do arquvio 

" set background=dark
" set background=light
" set t_Co=256
set autoindent            
set confirm
set cursorline            
set encoding=utf-8
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
set sw=4
set t_vb=
set term=xterm-256color
set softtabstop=4
set ts=4
set updatetime=250
set visualbell
set wildmenu

set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'

	" Essenciais.
	Plugin 'scrooloose/nerdtree'                             " Barra lateral para navegação de arquivos
	Plugin 'git@github.com:ivalkeen/nerdtree-execute.git'	 " Executar arquivos de dentro do nerdtree
	Plugin 'git@github.com:godlygeek/tabular.git'            " Vim tabular para tabulações
	Plugin 'git@github.com:tomtom/tcomment_vim.git'          " Para comentar trechos de códgios
	Plugin 'git@github.com:jiangmiao/auto-pairs.git'         " Adiciona itens de fechamento automáticos como chaves, parenteses, colchetes e outros.
	Plugin 'git@github.com:kien/ctrlp.vim.git'               " Pesquisa e abertura de arquivos
	Plugin 'git@github.com:airblade/vim-gitgutter.git'       " Git plugin
	Plugin 'git@github.com:tpope/vim-fugitive.git'			 " Git

    " Codificação
	Plugin 'git@github.com:mattn/emmet-vim.git'              " Emmet html e CSS
	Plugin 'git@github.com:ervandew/supertab.git'            " Super tab para autocompletes entre outros
	Plugin 'git@github.com:terryma/vim-multiple-cursors.git' " Vim multiplos cursores
	Plugin 'git@github.com:tpope/vim-surround.git'           " Adiciona fechamentos
	Plugin 'MarcWeber/vim-addon-mw-utils'
	Plugin 'tomtom/tlib_vim'
	Plugin 'garbas/vim-snipmate'
	Plugin 'honza/vim-snippets'
	" Plugin 'git@github.com:SirVer/ultisnips.git'           " gerenciamento e uso de snips
	Plugin 'git@github.com:mileszs/ack.vim.git'				 " Refinamento da pesquisa
	
	" Themes
	Plugin 'git@github.com:morhetz/gruvbox.git'
	Plugin 'git@github.com:mhartington/oceanic-next.git'
	Plugin 'dracula/dracula-theme'

	" Airline
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

" Configuração do emmet-vim
autocmd FileType html,css EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = ',,'

" Definição de esquema de cores
colorscheme OceanicNext

set background=light
if (has("termguicolors"))
	set termguicolors
endif

let g:oceanic_next_terminal_bold   = 1
let g:oceanic_next_terminal_italic = 1

" colorscheme gruvbox

" Configuraão do airline
let g:airline#extensions#tabline#enabled = 1

" Ultil snippets
" let g:UltiSnipsExpandTrigger       = "<tab>"
" let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsEditSplit           = "vertical"
" let g:UltiSnipsSnippetsDir         = "~/.vim/bundle/ultisnips/"

" PHP
augroup PHP
	autocmd! 

	" Check for PHP syntax errors after saving a file
	autocmd BufWritePost {*.php} echom system("php -l ".expand('%'))
augroup END

" GIT
let g:gitgutter_sign_modified = '>'
nmap <Leader>n :GitGutterNextHunk<CR>
nmap <Leader>p :GitGutterPrevHunk<CR>

" CtrlP conf
" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|Data'
