" Define Vimrc command to quickly edit .vimrc
command! Vimrc vsplit ~/.vimrc
" Source Vimrc file
command! SourceVimrc source ~/.vimrc
set background=dark
syntax enable
" Disable vi compatibility
set nocompatible
" Set default encoding
set encoding=utf-8
" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=4
" When 'wildmenu' is on, command-line completion operates in an enhanced mode.
set wildmenu
set wildignorecase
set wildmode=full
" Briefly show matching brackets
set showmatch
" How vim formats text
set formatoptions=crqn
" Enable mouse support
set mouse=a
" Use visualbell
set visualbell
" Print the line number in front of each line.
set number
" Changes the displayed number to be relative to the cursor.
set relativenumber
" Ignore case for searches
set ignorecase
set smartcase
" While typing a search command, show where the pattern, as it was typed
" so far, matches.  The matched string is highlighted.  If the pattern
" is invalid or not found, nothing is shown.  The screen will be updated
" often, this is only useful on fast terminals.
set incsearch
" When there is a previous search pattern, highlight all its matches.
" The type of highlighting used can be set with the 'l' occasion in the
" 'highlight' option.  This uses the 'Search' highlight group by
" default.
set hlsearch
" Enables automatic C program indenting.
set cindent
" Show the line and column number of the cursor position, separated by a comma.
set ruler
" Number of spaces that a <Tab> in the file counts for.
set tabstop=2
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>. 
" Spaces are used in indents with the '>' and '<' commands and when
" 'autoindent' is on.
set expandtab
" Number of spaces to use for each step of (auto)indent.  Used for |'cindent'|,
" |>>|, |<<|, etc.
set shiftwidth=2
" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>.
set softtabstop=2
" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread
" Indicates a fast terminal connection.  More characters will be sent to
" the screen for redrawing, instead of using insert/delete line
" commands.
set ttyfast
" Wrap lines on words.
set linebreak
" Support greek in vim. Use Ctrl+6 to change input language on vim.
set keymap=greek_utf-8
set iminsert=0
set imsearch=-1
set backspace=indent,eol,start
" Disable modelines for better security
set modelines=0
"set list
"set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
" When off a buffer is unloaded when it is |abandon|ed.  When on a
" buffer becomes hidden when it is |abandon|ed.  If the buffer is still
" displayed in another window, it does not become hidden, of course.
set hidden
" Hide show mode line cause you are using lightline plugin
set noshowmode
set laststatus=2





""""""""""
" Mappings
""""""""""

" Set the leader key to space.
let mapleader=" "
" Set jj as your Escape Key. 
inoremap jj <ESC>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

""""""""""
" Plugins
""""""""""

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

call plug#end()

"""""""""
" Plugin Settings
"""""""""

" Set lightline theme
let g:lightline = {
  \ 'colorscheme': 'Dracula',
  \ }
" Show indentation
let g:indentLine_char = '¦'
" ControlP Mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

color dracula
