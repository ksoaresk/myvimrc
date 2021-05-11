syntax on

" set background=light
set background=dark
set autoindent            
set confirm
set cursorline            
set encoding=UTF-8
set formatexpr=xmlformat#Format()
set hidden
set history=500
set hlsearch
set ignorecase
set incsearch
set nocompatible              
set noerrorbells
set nowrap
set number
set relativenumber
set showmatch
set smartcase
set smartindent           
set softtabstop=4
set sw=4
set t_Co=256
set t_vb=
set ts=4
set noexpandtab
set shiftwidth=4
set softtabstop=0
set updatetime=250
set visualbell
set wildmenu
set clipboard=unnamedplus
set splitbelow

" Verifica se as configuração estão no neovim
if has("nvim")
	autocmd TermOpen * startinsert
	set inccommand=split
endif

"----------- DEFINIÇÃO DE ESQUEMA DE CORES -----------
if (has("termguicolors"))
	set termguicolors
endif

" colorscheme OceanicNext
" colorscheme solarized8
colorscheme gruvbox
" colorscheme solarized
" colorscheme dracula

" Define o tema com base no horário
" if strftime("%H") < 6 + 0
" 	set background=light
" 	colorscheme OceanicNext
" elseif strftime("%H") < 12 + 0
" 	colorscheme dracula
" elseif strftime("%H") < 18 + 0
" 	colorscheme gruvbox
" else
" 	colorscheme OceanicNext
" endif

let g:solarized_termcolors=256
let g:oceanic_next_terminal_bold   = 1
let g:oceanic_next_terminal_italic = 1
" --------------------------------------

"----------- CONFIGURAÇÃO DO EMMET-VIM ----------
autocmd FileType html,css EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = ',,'

"---------- CONFIGURAÃO DO AIRLINE ------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='base16_oceanicnext'
" let g:airline_solarized_bg='dark'

" Ultil snippets
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsEditSplit           = "vertical"
let g:UltiSnipsSnippetsDir         = "~/.vim/plugged/ultisnips/"

" FZF
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline() 

" PowerLine
if !exists('g:airline_symbols')
	 let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'


" NerdTree
" Abrir o arquivo na mesma tela, dividindo na horizontal: Selecione o arquivo no NERDTree e pressione “i”
" Abrir o arquivo na mesma tela, dividindo na vertical: Selecione o arquivo no NERDTree e pressione “s”
" Abrir o arquivo em outra aba: Selecione o arquivo no NERDTree e pressione “t”
" Para chavear entre as abas: Pressione “g” e depois “t”, para próxima, ou “T” para a anterior, ou “#gt” para mudar para aba número #. Para facilitar, nas configurações têm uma função e um atalho para mudar de aba. H, move para aba anterior, e L, para a próxima.

let NERDTreeShowHidden = 1
" Open a NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
"" When open change the focus to the file (and not the NERDTree)
"autocmd! VimEnter * NERDTree | wincmd w
"" close vim if the only window left open is a NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Configuração do cursor ----------------------------
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" SUPERTAB ------------------------------------------
" let g:SuperTabDefaultCompletionType = "<c-p>"
" let g:SuperTabContextDefaultCompletionType = "<c-p>"
let g:SuperTabDefaultCompletionType = "<c-n>"

" Configuração NCM ----------------------------------
set completeopt=noinsert,menuone,noselect 

" Configurçaão TypeScript
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript
" dark red
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic
