set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'

	                                                                    " Essenciais.
	                                                                    " Plugin 'git@github.com:kien/ctrlp.vim.git'                                            " Pesquisa e abertura de arquivos
	Plugin 'scrooloose/nerdtree'                                        " Barra lateral para navegação de arquivos
	Plugin 'git@github.com:ivalkeen/nerdtree-execute.git'               " Executar arquivos de dentro do nerdtree
	Plugin 'git@github.com:godlygeek/tabular.git'                       " Vim tabular para tabulações
	Plugin 'git@github.com:tomtom/tcomment_vim.git'                     " Para comentar trechos de códgios
	Plugin 'git@github.com:jiangmiao/auto-pairs.git'                    " Adiciona itens de fechamento automáticos como chaves, parenteses, colchetes e outros.
	Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " Pesquisa com fuzzificador
	Plugin 'junegunn/fzf.vim'
	Plugin 'git@github.com:airblade/vim-gitgutter.git'                  " Git plugin
	Plugin 'git@github.com:tpope/vim-fugitive.git'                      " Git

    " Codificação
	Plugin 'git@github.com:ap/vim-css-color.git'                        " Emmet html e CSS
	Plugin 'git@github.com:mattn/emmet-vim.git'                         " Emmet html e CSS
	Plugin 'git@github.com:ervandew/supertab.git'                       " Super tab para autocompletes entre outros
	Plugin 'git@github.com:terryma/vim-multiple-cursors.git'            " Vim multiplos cursores
	Plugin 'git@github.com:tpope/vim-surround.git'                      " Adiciona fechamentos
	Plugin 'MarcWeber/vim-addon-mw-utils'
	Plugin 'tomtom/tlib_vim'
	Plugin 'garbas/vim-snipmate'
	Plugin 'honza/vim-snippets'
	Plugin 'git@github.com:SirVer/ultisnips.git'                        " gerenciamento e uso de snips
	Plugin 'git@github.com:mileszs/ack.vim.git'                         " Refinamento da pesquisa
	Plugin 'git@github.com:chrisbra/vim-xml-runtime.git'                " Tratamento e formatação de XML de forma dinamica
	Plugin 'git@github.com:majutsushi/tagbar.git'                       " Navegador de estrutura
	Plugin 'git@github.com:vim-syntastic/syntastic.git'                 " análise de sintaxe
	
	" Themes
	Plugin 'git@github.com:morhetz/gruvbox.git'
	Plugin 'git@github.com:mhartington/oceanic-next.git'
	Plugin 'dracula/dracula-theme'

	" Airline
	Plugin 'git@github.com:Lokaltog/vim-powerline.git'
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'git@github.com:ryanoasis/vim-devicons.git'

call vundle#end()
