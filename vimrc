set nocompatible

" Bundles
"===================
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle "gmaric/vundle"
Bundle "tpope/vim-fugitive"
"Bundle "sontek/minibufexpl.vim"
Bundle "wincent/Command-T"
Bundle "sjl/gundo.vim"
Bundle "vim-scripts/TaskList.vim"
Bundle "vim-scripts/The-NERD-tree"
Bundle "Lokaltog/powerline"
Bundle "vim-scripts/Conque-Shell"
Bundle "wesQ3/vim-windowswap"
Bundle "xolox/vim-session"
Bundle "xolox/vim-misc"
" Python-specific
Bundle "davidhalter/jedi-vim"
Bundle "vim-scripts/pep8"
Bundle "fs111/pydoc.vim"
Bundle "mitechie/pyflakes-pathogen"

filetype plugin indent on

" General Options
"===================
" key mappings
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
map <c-w>r :vertical resize 80<CR>

set list
set listchars=tab:>.,trail:.
set expandtab
set tabstop=4
set shiftwidth=4
set colorcolumn=81
set showbreak=\ #>

" disable bells
set noeb vb t_vb=
au GUIEnter * set vb t_vb=

" Basic GUI options
"===================
if has("gui_running")
    colorscheme slate
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
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
"let g:pep8_map='<leader>8'

" NERD Tree
"===================
if has("gui_running")
    autocmd VimEnter * NERDTree
endif

" Powerline
"===================
if has("gui_running")
    set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
endif

" Jedi-vim
"===================
autocmd FileType python setlocal completeopt-=preview

" Window swap
"===================
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>sw :call WindowSwap#DoWindowSwap()<CR>
