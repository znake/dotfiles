set nocompatible

let mapleader = ","

silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

set hidden                        " Handle multiple buffers better.
set visualbell                    " No beeping.
set title                         " Set the terminal's title

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" disable VIM welcome screen
set shortmess+=I

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase                      " But case-sensitive if expression contains a capital letter.
"set wildset ignorecase             " Case-insensitive searching.

set wrap linebreak textwidth=0
set showbreak=>>>

" Tab completion
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Without setting this, ZoomWin restores windows in a way that causes
" equalalways behavior to be triggered the next time CommandT is used.
" This is likely a bludgeon to solve some other issue, but it works
set noequalalways

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20

" ZoomWin configuration
map <Leader><Leader> :ZoomWin<CR>

" CTags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Show 3 lines of context around the cursor.
set scrolloff=3

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Mm <CR>
endfunction

" make uses real tabs
au FileType make                                     set noexpandtab

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" md, markdown, and mk are markdown and define buffer-local preview
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile *.txt call s:setupWrapping()

" make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python  set tabstop=4 textwidth=79

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Unimpaired configuration
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Use modeline overrides
set modeline
set modelines=10

" Default color scheme
color desert

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Turn off jslint errors by default
let g:JSLintHighlightErrorLine = 0

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" % to bounce from do to end etc.
runtime! macros/matchit.vim

"LaTeX Stuff
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':o
let g:Tex_DefaultTargetFormat = 'pdf' 
let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*' 
let g:Tex_CompileRule_ps = 'dvips -Pwww -o $*.ps $*.dvi' 
let g:Tex_CompileRule_pspdf = 'ps2pdf $*.ps' 
let g:Tex_CompileRule_dvipdf = 'dvipdfm $*.dvi' 
let g:Tex_CompileRule_pdf = 'pdflatex $*' 
let g:Tex_ViewRule_dvi = 'texniscope' 
let g:Tex_ViewRule_ps = 'Preview' 
let g:Tex_ViewRule_pdf = 'Skim' 
let g:Tex_FormatDependency_ps  = 'dvi,ps' 
let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf' 
let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf' 
let g:Tex_IgnoredWarnings =' 
      \"Underfull\n". 
      \"Overfull\n". 
      \"specifier changed to\n". 
      \"You have requested\n". 
      \"Missing number, treated as zero.\n". 
      \"There were undefined references\n". 
      \"Citation %.%# undefined\n". 
      \"\oval, \circle, or \line size unavailable\n"' 

" Tab mappings.
map <leader>nt :NERDTree<cr>

map <leader>ap :AlignCtrl Wr:<cr>
map <leader>ip :Align =><cr>
" Leader shortcuts for Rails commands
map <leader>rc :Rcontroller<cr>
map <leader>rm :Rmodel<cr>
map <leader>rv :Rview<cr>
map <Leader>ru :Runittest<cr>
map <Leader>rf :Rfunctionaltest<cr> 
map <Leader>tm :RTmodel<cr> 
map <Leader>tc :RTcontroller<cr> 
map <Leader>tv :RTview<cr> 
map <Leader>tu :RTunittest<cr> 
map <Leader>tf :RTfunctionaltest<cr> 
map <Leader>sm :RSmodel<cr> 
map <Leader>sc :RScontroller<cr> 
map <Leader>sv :RSview<cr> 
map <Leader>su :RSunittest<cr> 
map <Leader>sf :RSfunctionaltest<cr> 
map <Leader>ds :nohls<cr> 
map <Leader>id mmgg=G'm

map <Leader>x <Plug>ToggleAutoCloseMapping

"insert new line
map <leader>nl :put =''<cr>

" For the MakeGreen plugin and Ruby RSpec. 
autocmd BufNewFile, BufRead *_spec.rb compiler rspec

" jQuery Syntax highlighting
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
