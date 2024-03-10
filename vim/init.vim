" Win: %LOCALAPPDATA%\nvim\init.vim
" Linux: ~/.config/nvim/init.vim

set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed
set number
set relativenumber
set hlsearch
set smartindent
set laststatus=2
set wildmenu
set ruler
set history=9999
set encoding=utf8
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
syntax enable
hi VertSplit cterm=none

" plugin settings
call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'simeji/winresizer'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'pepo-le/win-ime-con.nvim'
call plug#end()

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
command! -nargs=0 Format :call CocActionAsync('format')
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" key settings
noremap L $ "行末に移動
nnoremap <silent> tn <cmd>belowright new<CR><cmd>terminal<CR> " 下側でターミナルひらく
nnoremap <silent> qq :qall!<CR> " qqで保存せずに閉じる

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> <Plug>AirlineSelectPrevTab
nnoremap <C-n> <Plug>AirlineSelectNextTab

command Now echo expand('%:p') " ファイルパスを出力

" entry
autocmd VimEnter * execute 'NERDTree'

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'deus'

" キーマッピング: https://vimblog.hatenablog.com/entry/vimrc_key_mapping
