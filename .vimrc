""""""""""""""""""""""""""""""""""""
" Vimrc for zyarash Unix boxes :)  "
""""""""""""""""""""""""""""""""""""

" Pathogen for managing vim packages
execute pathogen#infect()

"  Syntax + Filetype rules
syntax enable
syntax on
filetype on
filetype plugin on
filetype plugin indent on

" JS
au FileType javascript set sw=4
au FileType javascript set ts=4

" HTML
au FileType html set sw=4
au FileType html set ts=4

" Ruby
au FileType ruby set sw=4
au FileType ruby set ts=4
au FileType eruby set sw=4
au FileType eruby set ts=4

" CSS
au FileType css set sw=4
au FileType css set ts=4

" Alias commands for caps
command W w
command Wa wa
command Wq Wq

" Theme settings
set t_Co=456
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" Color settings to match theme
hi Normal ctermbg=NONE
hi LineNr ctermbg=NONE
hi TabLine ctermbg=NONE
hi TabLineFill ctermbg=NONE
hi SpecialKey ctermbg=NONE
hi NonText ctermfg=236

" Shows line number
set number

" Tabs are now spaces
set expandtab

" Cap on open tabs
set tabpagemax=50

" Sets auto indent + spacing
set ai 
set sw=4
set ts=4

" Directories for swap, undo and backup
set dir=~/.vim/.swap
set undodir=~/.vim/.undo
set backupdir=~/.vim/.backup

" Sets newline and tab chars
set list
set listchars=tab:▸\ ,eol:¬

" Sets visual line length 
:set colorcolumn=72

" Show line length, cursor char position
set ruler
