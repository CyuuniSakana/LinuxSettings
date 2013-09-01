set nocompatible    " use vim defaults
set ls=2            " allways show status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set cindent         " cindent
set smartindent     " smart indent
set autoindent      " always set autoindenting on
set showcmd         " display incomplete commands
set hlsearch        " highlight searches
set incsearch       " do incremental searching
set ruler           " show the cursor position all the time
set visualbell t_vb=    " turn off error beep/flash
set novisualbell    " turn off visual bell
set nobackup        " do not keep a backup file
set number          " show line numbers
set ignorecase      " ignore case when searching 
"set noignorecase   " don't ignore case
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set backspace=2
set fileencodings=utf-8,big5,gbk
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8
"set autowrite      " auto saves changes when quitting and swiching buffer
"set expandtab      " tabs are converted to spaces, use only when required
"set sm             " show matching braces, somewhat annoying...
"set nowrap         " don't wrap lines
colorscheme nickle
" tab hint
set listchars=tab:>-
set list

if version>=600
    syntax on          " syntax highlighing

    "---- Options for Windows
    if has("gui_running")
        set guifont=Courier   " use this font 
        set lines=50      " height = 50 lines
        set columns=100       " width = 100 columns
        set background=light  " adapt colors for background
        set selectmode=mouse,key,cmd
        set keymodel=
    else
        set background=dark   " adapt colors for dark background
        colorscheme elflord   " use this color scheme
    endif

    " Filetypes (au = autocmd)
    au filetype help set nonumber      " no line numbers when viewing help
    au filetype help nnoremap <buffer><cr> <c-]>   " Enter selects subject
    au filetype help nnoremap <buffer><bs> <c-T>   " Backspace to go back
    au FileType python set foldmethod=indent
    au FileType python setlocal et sta sw=4 sts=4

    " When using mutt, text width=72
    "au filetype mail set textwidth=72
    "au filetype tex set textwidth=72
    "au BufRead mutt*[0-9] set tw=72

    " Automatically chmod +x Shell and Perl scripts
    au BufWritePost   *.sh             !chmod +x %
    au BufWritePost   *.pl             !chmod +x %
    au BufWritePost   *.py             !chmod +x %

    " File formats
    au BufNewFile,BufRead  *.pls    set syntax=dosini
    au BufNewFile,BufRead  modprobe.conf    set syntax=modconf
    au BufRead,BufNewFile *.psp set filetype=psp
endif

" Keyboard mappings
map <F1> :previous<CR>  " map F1 to open previous buffer
map <F2> :next<CR>      " map F2 to open next buffer
map <silent> <C-N> :silent noh<CR> " turn off highlighted search
map ,v :sp ~/.vimrc<cr> " edit my .vimrc file in a split
map ,e :e ~/.vimrc<cr>      " edit my .vimrc file
map ,u :source ~/.vimrc<cr> " update the system settings from my vimrc file
"----- write out html file
map ,h :source $VIM/vim70/syntax/2html.vim<cr>:w<cr>:clo<cr>:n<cr>,h



" Common command line typos
"cmap W w
"cmap Q q

" Keyboard mapping for numeric keypad
imap <Esc>OM <c-m>
 map <Esc>OM <c-m>
imap <Esc>OP <nop>
 map <Esc>OP <nop>
imap <Esc>OQ /
 map <Esc>OQ /
imap <Esc>OR *
 map <Esc>OR *
imap <Esc>OS -
 map <Esc>OS -

imap <Esc>Ol +
imap <Esc>Om -
imap <Esc>On ,
imap <Esc>Op 0
imap <Esc>Oq 1
imap <Esc>Or 2
imap <Esc>Os 3
imap <Esc>Ot 4
imap <Esc>Ou 5
imap <Esc>Ov 6
imap <Esc>Ow 7
imap <Esc>Ox 8
imap <Esc>Oy 9
imap <Esc>Oz 0
