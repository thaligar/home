call plug#begin()

Plug 'vim-scripts/MultipleSearch'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Plug 'Valloric/YouCompleteMe', {'do': '/usr/bin/python ./install.py'}

" Python development
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'bronson/vim-trailing-whitespace'
Plug 'dhruvasagar/vim-table-mode'
Plug 'kien/ctrlp.vim'
Plug 'plasticboy/vim-markdown'
Plug 'saltstack/salt-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'vim-scripts/gnupg'
Plug 'vim-scripts/python_fold'
Plug 'vim-scripts/renamer.vim'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'

" Plug 'vimoutliner/vimoutliner'
" Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
call plug#end()

let mapleader = ","

filetype plugin indent on

set foldlevel=20
set foldlevelstart=20

" to make the scrolling wheel work with normal vte-terminals
set mouse=
set guioptions=


" {{{ vim-airline
"let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#ale = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#branch#enabled = 1
set laststatus=2
set noshowmode
set t_Co=256
" }}}

" Set column length to 80
set textwidth=80
set colorcolumn=80

" Coloscheme
colorscheme morning

highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red
" }}}


" paragraph formatting
setl formatoptions=a2tq

" set to be not compatible with vi
set nocompatible

" show at least scrolloff lines after a scroll
set scrolloff=5

" encoding
set encoding=utf-8

" line numbers
set number

" highlight search pattern
set hlsearch

" disable search highlighing with a return on the command line
nnoremap <CR> :noh<CR><CR>

" enable syntax
syntax enable

" autoindent files
set autoindent

" Add antialias support to the GUI
set antialias

" enable ruler
set ruler

" non lo so
set showcmd
set cindent

" incremental search
set incsearch

" search is not case sensitive if everything is lowercase
" set ignorecase. use \c  or \C instead in the pattern
set smartcase

" highlight strings inside C comments
let c_comment_strings=1

" KEYBINDING

" map show invisible characters
set listchars=tab:>\ ,eol:¬

"" TagList
"" F4:  Switch on/off TagList
"nnoremap <silent> <F4> :TagbarToggle<CR>
"let g:tagbar_autoclose = 1
"let g:tagbar_autofocus = 1
"let g:tagbar_compact = 1
"let g:tagbar_sort = 1
""

" YouCompleteMe
let g:ycm_confirm_extra_conf = 1
let g:ycm_python_binary_path = 'python'
let g:ycm_server_python_interpreter = '/usr/bin/python2'

" Templates
let g:UltiSnipsExpandTrigger='<c-j>'

" Nerd tree toggle
let g:NERDTreeChDirMode = 0
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', '.*/htmlcov/.*', '.*\.egg-info']

" Ycm "GoTo"s
nnoremap <leader>1 :YcmCompleter GoToDefinition<CR>
nnoremap <leader>2 :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>r :YcmCompleter GoToReferences<CR>
nnoremap <leader>d :YcmCompleter GetDoc<CR>

" BufExplorer
nnoremap <silent> <F5> :BufExplorer<CR>
nnoremap <silent> <F2> :NERDTreeFocus<CR>

nnoremap <leader>n :set relativenumber!<CR>

for f in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
    exe 'source' f
endfor


" {{{ CTRL-P configuration
set wildignore+=*/htmlcov/*,*.pyc,*/build/*,*.egg-info/*
" }}}

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <silent> <C-S> <esc>:<C-u>Update<CR>
nnoremap <C-q> :q<CR>

" leader twice will save and exit from each mode
nnoremap <leader><leader> :xa<cr>
inoremap <leader><leader> <esc>:xq<cr>

set shiftwidth=2
set softtabstop=2
set tabstop=2

"autocmd Filetype 
