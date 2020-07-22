syntax on

set autoindent            
" set background=light
set background=dark
set confirm
set cursorline            
set encoding=UTF-8
set formatexpr=xmlformat#Format()
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
set ts=4
set updatetime=250
set visualbell
set wildmenu

" Definição de esquema de cores
colorscheme OceanicNext
" colorscheme gruvbox

if (has("termguicolors"))
	set termguicolors
endif

let g:oceanic_next_terminal_bold   = 1
let g:oceanic_next_terminal_italic = 1

" Configuração do emmet-vim
autocmd FileType html,css EmmetInstall
let g:user_emmet_install_global = 0
let g:user_emmet_expandabbr_key = ',,'

" Configuraão do airline
let g:airline#extensions#tabline#enabled = 1

" Ultil snippets
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsEditSplit           = "vertical"
let g:UltiSnipsSnippetsDir         = "~/.vim/bundle/ultisnips/"

" PHP
" augroup PHP
" 	autocmd! 
" 	" Check for PHP syntax errors after saving a file
" 	autocmd BufWritePost {*.php} echom system("php -l ".expand('%'))
" augroup END

" GIT
let g:gitgutter_sign_modified = '>'
nmap <Leader>n :GitGutterNextHunk<CR>
nmap <Leader>p :GitGutterPrevHunk<CR>

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
let NERDTreeShowHidden = 1

" PHP Find Subclasses
function! PhpSubclasses(word)
	exe 'Ack "extends.*' . a:word . ' *($|{)"'
endfunction

" PHP Find Implementations
function! PhpImplementations(word)
	exe 'Ack "implements.*' . a:word . ' *($|{)"'
endfunction

noremap <Leader>fi :call PhpImplementations('<cword>')<CR>
noremap <Leader>fe :call PhpSubclasses('<cword>')<CR>

" Syntastic configuration
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic configuration for PHP
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_exec = './bin/phpcs'
let g:syntastic_php_phpcs_args = '--standard=psr2'
let g:syntastic_php_phpmd_exec = './bin/phpmd'
let g:syntastic_php_phpmd_post_args = 'cleancode,codesize,controversial,design,unusedcode'
