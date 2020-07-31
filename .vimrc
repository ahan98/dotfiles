"""""""""""
" PLUGINS "
"""""""""""
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'
Plug 'romainl/vim-cool'
Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'preservim/nerdcommenter'
" magit

call plug#end()

" Instant Markdown
let g:instant_markdown_mathjax = 1
let g:instant_markdown_slow = 1
let g:instant_markdown_autoscroll = 1
let g:vim_markdown_folding_level = 2

" Plasticboy
let g:vim_markdown_math = 1
let g:vim_markdown_auto_insert_bullets = 1

" vim-cool
" let g:CoolTotalMatches = 1 " show num. search results in command-line

"""""""""""""""""""
" EDITOR SETTINGS "
"""""""""""""""""""

set tabstop=4 shiftwidth=4 expandtab

set backspace=indent,eol,start " backspace over everything in insert mode
set number relativenumber
set cursorline
set cc=80

" search
set smartcase
set ignorecase
set incsearch
set hlsearch
set shortmess-=S " show search count in status bar

" wrapping
set textwidth=80
set wrapmargin=0
set formatoptions+=t
set linebreak " (optional - breaks by word rather than character)

set formatoptions-=cro
set conceallevel=3
set foldenable

""""""""""
" THEMES "
""""""""""
set termguicolors

set background=dark
let g:gruvbox_italic=1
"let g:gruvbox_material_background = 'soft'
colo gruvbox

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme='base16'

""""""""""""""""
" KEY BINDINGS "
""""""""""""""""

let mapleader = " "

nnoremap <Tab> %
nnoremap <C-s> :update<cr>
inoremap <C-s> <Esc>:update<cr>gi

" delete all whitespace
noremap <leader><bs> :%s/\s\+$//g<cr><C-o>

"=========
" folding
"=========

" toggle current/all folds
nnoremap ff za
nnoremap FF zA

"============
" arrow keys
"============
" move cursor visually rather than by (wrapped) lines
" nnoremap <expr> j v:count ? 'j' : 'gj'
" nnoremap <expr> k v:count ? 'k' : 'gk'
" nnoremap <silent> j gj
" nnoremap <silent> k gk

" ========
"  splits
" ========
nnoremap <leader>w <C-w>
