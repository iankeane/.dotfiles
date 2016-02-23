"pathogen stuff {{{
    "clone plugins to .vim/bundle
    filetype off "temporarily turn off filetype options
    call pathogen#infect() "load pathogen
    filetype plugin indent on "load filetype-specific indent and plugin files
"}}}

"appearance {{{
    colorscheme zenburn
    syntax on "enable syntax
    set encoding=utf-8 "keep utf-8 encoding
    set scrolloff=3 "keep at least 3 lines above and below cursor
    set showmode "something something buffers
    set showcmd "show command in bottom bar
    set wildmenu "visual autocomplete for command menu
    set wildmode=list:longest "show all completions on tab
    set laststatus=2 "last window will always have statusline
    set showmatch "highlight matching [{()}]
    set cursorline "highlight current line
"    }}}

"movement {{{
    " map alt-j and k to move text lines vertically, maintaining indent
" }}}

"folding {{{
    set foldenable "enable folding
    set foldmethod=marker "fold sections by marker
    set foldlevel=0 "fold by default
    set modelines=1 "check final line of file for modeline
"}}}

"behavior {{{
    set nocompatible "turn off stupid vi compatability nonsense
    set hidden "hide buffer when opening new file
    set visualbell "use visual bell instead of beeping
    set ttyfast "improves smoothness and drawing
    set backspace=indent,eol,start "always allow backspacing
    set undofile "make .un file for persistent undo
    set relativenumber "make numbers relative to current line
    set lazyredraw "redraw only when necessary
"}}} 

"searching {{{
    set gdefault "remove default g flag on search
    set ignorecase "ignore case for searches
    set smartcase "case-specific only when uppercase
    set hlsearch "don't continue to highlight searched phrases.
    set incsearch "but do search as characters are entered
    "remap tab to jump by brackets
    nnoremap <tab> %
    vnoremap <tab> %
"}}}

"tab settings {{{
    set tabstop=4 " number of visual spaces per tab
    set softtabstop=4 "should always = tabstop
    set shiftwidth=4 "indent/outdent by 4 columns
    set expandtab "tabs are spaces
    set shiftround "always indent/outdent to the nearest tabstop
    "make search terms more visible
    highlight Visual ctermbg=DarkGreen ctermfg=Black
    set autoindent "auto indentation
"}}}

"ruler settings {{{
    set rulerformat=%l,%-2v\|%4L\ Lines "display line, column, and total lines
    set ruler "turn on ruler
"}}}

"long line handling {{{
    set textwidth=79
    set fo=
    set fo=t
"   set colorcolumn=85
"}}}

"leaders {{{
    :let mapleader = ","
    "clear search highlighting with leader-space
    nnoremap <leader><space> :noh<cr>
    "underline with line of the same length
    nnoremap <leader>- yypv$r-
    "insert date on current line
    nnoremap <leader>d k :r !date <cr>
    "open NERDTree
    map <leader>n :NERDTreeToggle<cr>
"}}}

"invisible characters {{{
    set list
    set listchars=tab:▸\ ,eol:¬
"}}}

"hjkl {{{
    "disable arrow keys in normal and visual mode
    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> <nop>
    nnoremap <right> <nop>
    inoremap <up> <nop>
    inoremap <down> <nop>
    inoremap <left> <nop>
    inoremap <right> <nop>
    "disable h and l
    nnoremap h <nop>
    nnoremap l <nop>
    "make j and k move by screen line, not file line
    nnoremap j gj
    nnoremap k gk
"}}}

"split pane navigation {{{
    "map vertical split to \ w, switch to it, open explorer, prompt for filename
    nnoremap <leader>w <C-w>v<C-w>l:e <C-S-d><BS><BS>open 
    "switch panes wit ctrl + h/j/k/l
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l
    "map resize pane
    map + :vertical resize +5<CR>
    map - :vertical resize -5<CR>
"}}}

"launch love game, check youtube love2d roguelike+rpg day 1 if broken {{{
    map ,t :! /Applications/love.app/Contents/MacOS/love . <CR>
"}}}

"file specific {{{
    "in markdown files, when writing add two spaces to each line to fix spacing in compiled version
    au BufWritePost *.md silent! %s/[^ ]\zs$/\1  /
    "bold something in a markdown file
    :au FileType markdown nmap <leader>b i**<esc>ea**<esc>b
"}}}

"plugin modification {{{
    " CtrlP
    "''''''
    " set binding
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlP'
    " start from current dir if not specified
    let g:ctrlp_working_path_mode = 'ra'
    " ignore obnoxious files
    set wildignore+=*/tmp/*,*.un~,*.swp,*.bak
    " ignore files in .gitignore
     let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
     " EasyAlign
     " '''''''''
     "" Start interactive EasyAlign in visual mode (e.g. vipga)
     xmap ga <Plug>(EasyAlign)
     " Start interactive EasyAlign for a motion/text object (e.g. gaip)
     nmap ga <Plug>(EasyAlign)

"}}}

"folding options, this must be last in file
" vim:foldmethod=marker:foldlevel=0
