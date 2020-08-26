call plug#begin('~/.vim/plugged')

	" Essenciais.
	" Plug 'kien/ctrlp.vim'                        " Pesquisa e abertura de arquivos
	Plug 'scrooloose/nerdtree'                                        " Barra lateral para navegação de arquivos
	Plug 'ivalkeen/nerdtree-execute'               " Executar arquivos de dentro do nerdtree
	Plug 'godlygeek/tabular'                       " Vim tabular para tabulações
	Plug 'tomtom/tcomment_vim'                     " Para comentar trechos de códgios
	Plug 'jiangmiao/auto-pairs'                    " Adiciona itens de fechamento automáticos como chaves, parenteses, colchetes e outros.
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Pesquisa com fuzzificador
	Plug 'junegunn/fzf.vim'
	Plug 'airblade/vim-gitgutter'                  " Git plugin
	Plug 'tpope/vim-fugitive'                      " Git
	Plug 'c9s/phpunit.vim'

    " Codificação
	Plug 'ap/vim-css-color'                        " Emmet html e CSS
	Plug 'mattn/emmet-vim'                         " Emmet html e CSS
	Plug 'ervandew/supertab'                       " Super tab para autocompletes entre outros
	Plug 'terryma/vim-multiple-cursors'            " Vim multiplos cursores
	Plug 'tpope/vim-surround'                      " Adiciona fechamentos
	Plug 'MarcWeber/vim-addon-mw-utils'
	Plug 'tomtom/tlib_vim'
	Plug 'garbas/vim-snipmate'
	Plug 'honza/vim-snippets'
	Plug 'SirVer/ultisnips'                        " gerenciamento e uso de snips
	Plug 'mileszs/ack.vim'                         " Refinamento da pesquisa
	Plug 'chrisbra/vim-xml-runtime'                " Tratamento e formatação de XML de forma dinamica
	Plug 'majutsushi/tagbar'                       " Navegador de estrutura
	Plug 'vim-syntastic/syntastic'                 " análise de sintaxe
	Plug 'stephpy/vim-php-cs-fixer'
	Plug 'adoy/vim-php-refactoring-toolbox'
	Plug 'tobyS/pdv' 
	Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}

	" Frontend
	" Plug 'storyn26383/vim-vue'
	" Plug 'pangloss/vim-javascript'
	Plug 'leafoftree/vim-vue-plugin'
	Plug 'iloginow/vim-stylus'

if has("nvim") 

	Plug 'ncm2/ncm2'
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-html-subscope'
	Plug 'ncm2/ncm2-markdown-subscope'
	Plug 'ncm2/ncm2-path'
	Plug 'ncm2/ncm2-tern'
	Plug 'ncm2/ncm2-vim'
	Plug 'phpactor/ncm2-phpactor'
	Plug 'roxma/nvim-yarp'
	Plug 'mhartington/nvim-typescript'
	
	autocmd BufEnter * call ncm2#enable_for_buffer()
	set completeopt=noinsert,menuone,noselect

endif

	" Themes
	Plug 'morhetz/gruvbox'
	Plug 'mhartington/oceanic-next'
	Plug 'dracula/vim', { 'name': 'dracula' }
	Plug 'lifepillar/vim-solarized8'
	Plug 'altercation/vim-colors-solarized'
	Plug 'dunstontc/vim-vscode-theme'

	" Airline
	Plug 'Lokaltog/vim-powerline'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'ryanoasis/vim-devicons'

call plug#end()
