let mapleader="\<space>"
nnoremap <leader>; A;<ESC>


set ai
set hidden
set history=500
set hlsearch
set ignorecase
set incsearch
set nocompatible
set nowrap
set number
set relativenumber
set ts=4
set sw=4
set wildmenu
set inccommand=split


filetype off                 


set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'
	Plugin '907th/vim-auto-save'
	Plugin 'altercation/vim-colors-solarized'
	Plugin 'git://git.wincent.com/command-t.git'
	Plugin 'johngrib/vim-game-snake'
	Plugin 'majutsushi/tagbar'
	Plugin 'mattn/emmet-vim'
	Plugin 'mhartington/oceanic-next'
	Plugin 'powerline/powerline'
	Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
	Plugin 'scrooloose/nerdtree'
	Plugin 'shawncplus/phpcomplete.vim'
	Plugin 'sheerun/vim-polyglot'
	Plugin 'tomasr/molokai'
	Plugin 'tpope/vim-fugitive'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'jiangmiao/auto-pairs'

call vundle#end()            

filetype plugin indent on   

" Seta o esquema de cores para OceanicNext
syntax on
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" Define tecla que irá acionar o emmet
let g:user_emmet_leader_key=','

let g:phpcomplete_mappings = {
			\ 'jump_to_def': '<C-]>',
			\ 'jump_to_def_split': '<C-W><C-]>',
			\ 'jump_to_def_vsplit': '<C-W><C-\>',
			\ 'jump_to_def_tabnew': '<C-W><C-[>',
			\}

"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='violet'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1

"=====================================================
"				  TagBar settings
"=====================================================
let g:tagbar_autofocus=0
let g:tagbar_width=42
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

"""""""""""" Mapeamento de Teclas """"""""""""""""""""
nmap ! :NERDTreeToggle<CR>
nmap <F5> :source %<CR>
nmap <C-e> :tabclose<CR>
nmap <C-t> :tabnew<CR>
nmap <C-PagUp> :tabn<CR>
nmap <C-PageDow> :tabp<CR>

