set nocompatible

" Bundles
"===================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Bundle "VundleVim/Vundle.vim"
Bundle "tpope/vim-fugitive"
Bundle "wincent/Command-T"
Bundle "sjl/gundo.vim"
Bundle "vim-scripts/TaskList.vim"
Bundle "vim-scripts/The-NERD-tree"
Bundle "Lokaltog/powerline"
Bundle "rosenfeld/conque-term"
Bundle "wesQ3/vim-windowswap"
Bundle "xolox/vim-session"
Bundle "xolox/vim-misc"
Bundle "vim-syntastic/syntastic"
" Python
Bundle "davidhalter/jedi-vim"
" Bundle "vim-scripts/pep8"
Bundle "fs111/pydoc.vim"
Bundle "mitechie/pyflakes-pathogen"
"Bundle "nvie/vim-flake8"
" Jinja2
Bundle "Glench/Vim-Jinja2-Syntax"
" Underscore
Bundle "aaronj1335/underscore-templates.vim"
" Mako
Bundle "sophacles/vim-bundle-mako"

filetype plugin indent on
syntax on

" General Options
"===================
" key mappings
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
map <c-w>r :vertical resize 80<CR>

map <space> <leader>
map <leader><space> :nohlsearch<CR>
nnoremap <leader><return> :wa!<CR>

set list
set listchars=tab:>.,trail:.
set colorcolumn=81
set showbreak=\ #>
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set number
set ruler

" disable bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

" move by displayed lines
nnoremap <silent> <Up> gk
nnoremap <silent> <Down> gj
nnoremap <silent> <Home> g<Home>
nnoremap <silent> <End> g<End>
nnoremap <silent> k gk
nnoremap <silent> j gj
nnoremap <silent> 0 g0
nnoremap <silent> $ g$
inoremap <silent> <Up> <C-o>gk
inoremap <silent> <Down> <C-o>gj
inoremap <silent> <Home> <C-o>g<Home>
inoremap <silent> <End> <C-o>g<End>

" save swapfiles in .vim directory instead of leaving them lying around
set directory=~/.vim/swap//
set backupdir=~/.vim/swap/backup//
set undodir=~/.vim/swap/undo//

" filetype options
autocmd Filetype html* setlocal expandtab tabstop=2 shiftwidth=2
au BufRead,BufNewFile *.page set filetype=underscore_template
au BufRead,BufNewFile *.html.template set filetype=mako


" Basic GUI options
"===================
if has("gui_running")
    colorscheme will
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h13
    set lines=999 columns=999
endif

" Session options
"===================
let g:session_autoload='prompt'
let g:session_autosave='yes'
let g:session_command_aliases=1
"let g:session_default_overwrite=1
if has("gui_running")
    "let g:session_autosave_periodic=10
    let g:session_default_to_last=1
endif

" TaskList
"===================
map <leader>l <Plug>TaskList

" PEP 8
"===================
let g:pep8_map='<leader>8'

" NERD Tree
"===================
if has("gui_running")
    autocmd VimEnter * NERDTree
endif
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '^__pycache__$']

" Powerline
"===================
if has("gui_running")
    set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
endif

" Jedi-vim
"===================
autocmd FileType python setlocal completeopt-=preview
"let g:jedi#force_py_version=3

" Window swap
"===================
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>sw :call WindowSwap#DoWindowSwap()<CR>
