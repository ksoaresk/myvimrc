source ~/.myvimrc/keys.vim
source ~/.myvimrc/plugins.vim

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
augroup PHP
	autocmd! 
	" Check for PHP syntax errors after saving a file
	autocmd BufWritePost {*.php} echom system("php -l ".expand('%'))
augroup END

" GIT
let g:gitgutter_sign_modified = '>'
nmap <Leader>n :GitGutterNextHunk<CR>
nmap <Leader>p :GitGutterPrevHunk<CR>

" PowerLine
set rtp+=/usr/local/lib/python3.6/dist-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" FZF
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
