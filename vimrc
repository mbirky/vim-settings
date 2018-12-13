syntax enable               " Enable syntax processing
colorscheme badwolf         " Found on github

"Tabs
set tabstop=4               " The number of vishual spaces per TAB
set softtabstop=4           " Number of spaces in TAB when editing
set expandtab               " TABs are spaces
set autoindent              " Allows indenting to happen automatically

" UI configuration
set number                  " Show line numbers
set ruler                   " Show line and column numbers in status bar
set cursorline              " Highlight current line
set wildmenu                " Visual autocomplete for command menu
set showmatch               " Highlight matching [{()}]
set showcmd                 " shows the cmd in the bottom next to the ruler

" Searching
set incsearch               " Search as characters are entered
set hlsearch                " Highlight matches
" Clear search with Space + w
map <S-w> :let @/ = ""<CR>

" Key Mapings
set pastetoggle=<F3>

" Autoload the python skeleton
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.py :r ~/.vim/templates/skeleton.py
  augroup END
endif
