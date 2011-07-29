" © Dharmesh Malam
" Vim config file

set nocompatible            " Use new VIM features
syntax on                   " Enable syntax highlighting
filetype on                 " Enable filetype detection
filetype indent on          " Enable filetype-specific indenting
filetype plugin on          " Enable filetype-specific plugins

" UI
"set cul                     " Highligh current line
set magic                   " For regexs
set showcmd                 " Show (partial) command in status line.
set showmatch               " Show matching brackets.
set ruler                   " show the line number on the bar
set more                    " use more prompt
set autoread                " watch for file changes
"set number                 " Line numbers
set lazyredraw              " don't redraw when don't have to
set backspace=2
set noerrorbells

"{{{ status line
"set laststatus=2
"set statusline=
"set statusline+=%2*%-3.3n%0*\ " buffer number
"set statusline+=%f\ " file name
"set statusline+=%h%1*%m%r%w%0* " flag
"set statusline+=[
"set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
"set statusline+=%{&encoding}, " encoding
"set statusline+=%{&fileformat}] " file format
"if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
"    set statusline+=\ %{VimBuddy()} " vim buddy
"endif
"set statusline+=%= " right align
""set statusline+=%2*0x%-8B\ " current char
""set statusline+=0x%-8B\ " current char
"set statusline+=%-10.(%l,%c%V%)\ \%L\ %<%P " offset
"}}}

" Tabs
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set autoindent smartindent

set spl=en spell            " English for spellchecking
set nospell                 " Don't spellcheck by default

" Completion
set wildmenu        
set wildmode=list:longest,full
set foldenable              " Set folding

" Searching
set smartcase               " AI Casing
set ignorecase              " Ignore case
set incsearch               " Incremental searching
set hlsearch                " Highlight search items

set history=1000
set undolevels=1000

set fileformats=unix
set ttyfast
set noerrorbells

" No backups
set nobackup 
set nowb
set noswapfile

" Key mappings
"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
map <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" omnicompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd Filetype sql set omnifunc=sqlcomplete#Complete
autocmd Filetype ruby set omnifunc=rubycomplete#Complete


