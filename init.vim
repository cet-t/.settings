set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed

set number
set hlsearch
set smartindent
set laststatus=2
set wildmenu
set lines=70 columns=150
set ruler
set history=1000
set encoding=utf8
syntax enable

" key settings
" https://vimblog.hatenablog.com/entry/vimrc_key_mapping
nmap <C-n> :NERDTreeToggle<CR>

noremap L $ "行末に移動

nnoremap <silent> tt <cmd>belowright new<CR><cmd>terminal<CR> " 下側でターミナルひらく

" plugin settings
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" nerdtree settings
autocmd VimEnter * execute 'NERDTree'
nmap <C-f> :NERDTreeToggle<CR>
let g:airline#extensions#tabline#enabled = 1
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

" airline settings
let g:airline_powerline_fonts = 1

hi VertSplit cterm=none

