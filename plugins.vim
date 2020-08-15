set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'

	" Essenciais.
	" Plugin 'kien/ctrlp.vim'                        " Pesquisa e abertura de arquivos
	Plugin 'scrooloose/nerdtree'                                        " Barra lateral para navegação de arquivos
	Plugin 'ivalkeen/nerdtree-execute'               " Executar arquivos de dentro do nerdtree
	Plugin 'godlygeek/tabular'                       " Vim tabular para tabulações
	Plugin 'tomtom/tcomment_vim'                     " Para comentar trechos de códgios
	Plugin 'jiangmiao/auto-pairs'                    " Adiciona itens de fechamento automáticos como chaves, parenteses, colchetes e outros.
	Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Pesquisa com fuzzificador
	Plugin 'junegunn/fzf.vim'
	Plugin 'airblade/vim-gitgutter'                  " Git plugin
	Plugin 'tpope/vim-fugitive'                      " Git

    " Codificação
	Plugin 'ap/vim-css-color'                        " Emmet html e CSS
	Plugin 'mattn/emmet-vim'                         " Emmet html e CSS
	Plugin 'ervandew/supertab'                       " Super tab para autocompletes entre outros
	Plugin 'terryma/vim-multiple-cursors'            " Vim multiplos cursores
	Plugin 'tpope/vim-surround'                      " Adiciona fechamentos
	Plugin 'MarcWeber/vim-addon-mw-utils'
	Plugin 'tomtom/tlib_vim'
	Plugin 'garbas/vim-snipmate'
	Plugin 'honza/vim-snippets'
	Plugin 'SirVer/ultisnips'                        " gerenciamento e uso de snips
	Plugin 'mileszs/ack.vim'                         " Refinamento da pesquisa
	Plugin 'chrisbra/vim-xml-runtime'                " Tratamento e formatação de XML de forma dinamica
	Plugin 'majutsushi/tagbar'                       " Navegador de estrutura
	Plugin 'vim-syntastic/syntastic'                 " análise de sintaxe
	Plugin 'stephpy/vim-php-cs-fixer'
	
	" Themes
	Plugin 'morhetz/gruvbox'
	Plugin 'mhartington/oceanic-next'
	Plugin 'dracula/dracula-theme'
	Plugin 'altercation/vim-colors-solarized'

	" Airline
	Plugin 'Lokaltog/vim-powerline'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'ryanoasis/vim-devicons'

call vundle#end() 
