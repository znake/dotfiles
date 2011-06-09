set nocompatible

let mapleader = ","

silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

set number
set ruler
syntax on

" Set encoding
set encoding=utf-8

" Autoread, files gets automatically updated when newer files are generated
" see :h W11
set autoread

set hidden     " Handle multiple buffers better.
set visualbell " No beeping.
set title      " Set the terminal's title

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set showcmd  " Display incomplete commands.
set showmode " Display the mode you're in.

" Useful status information at bottom of screen
set stl=%f\ %m\ %r\ %{fugitive#statusline()}\ Buf:%n\ Lin:%l/%L\ Col:%c\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %)%P 

" disable VIM welcome screen
set shortmess+=I

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase " But case-sensitive if expression contains a capital letter.
"set wildset ignorecase            " Case-insensitive searching.

" Softwrap for VIM
set wrap linebreak textwidth=0
set showbreak=>>

" Tab completion
set wildmenu " Enhanced command line completion.
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

set noequalalways

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader>nt :NERDTreeToggle<CR>

" For usual moving behaviour in wrapped lines"
map j gj
map k gk
map [Up] gk
map [Down] gj

" Command-T configuration
let g:CommandTMaxHeight=10

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

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Bubble single lines
nmap <D-Up> [e
nmap <D-Down> ]e
" Bubble multiple lines
vmap <D-Up> [egv
vmap <D-Down> ]egv

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
color znake

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

"For proper sync with Skim you ned to add this in your Skim Sync Settings
"Settings: own
"Command: mvim
"Arguments: --remote-silent +":%line;foldo!" "%file" 

map <Leader>lm :let g:Tex_MultipleCompileFormats = 'pdf'<cr>
"map <Leader>ld :let g:Tex_DefaultTargetFormat = 'pdf'<cr>

" MAPPINGS
" source vimrc
map <Leader>sf :source ~/.vimrc<cr>

" make uses real tabs
au FileType make set noexpandtab

" Tabularaized mappings
function! IndentX()
  <
  Tabularize /^[^:]*\zs:/r1c0l0
  Tabularize /^[^=>]*\zs=>/l1
endfunction
map <Leader>iv :call IndentX()<cr>
map <Leader>is :Tabularize /^[^"]*\zs"/l1c0<cr>
map <Leader>ip :Tabularize /^[^:]*\zs:/l1c0<cr>
map <Leader>ta :Tabularize /

map <Leader>js ZZ
map <Leader>ds :nohls<cr> 
map <Leader>id mmgg=G'm
" insert new line
map <Leader>nl :put =''<cr>

nmap <silent> <leader>so :set spell!<CR>
" Set region to British English
set spelllang=de_at
map <Leader>sn :set nospell<cr>

" Leader shortcuts for Rails commands
map <Leader>rc :Rcontroller<cr>
map <Leader>rm :Rmodel<cr>
map <Leader>rv :Rview<cr>
map <Leader>rh :Rhelper<cr>
map <Leader>rp :Rpreview<cr>
map <Leader>rj :Rjavascript<cr>
map <Leader>rl :Rlayout<cr>
map <Leader>rs :Rspec<cr>
map <Leader>ry :Rstylesheet<cr>
map <Leader>ru :Runittest<cr>
map <Leader>ga :A<cr> 
map <Leader>gr :R<cr> 

" Filetype mappings
map <Leader>fh :set ft=html<cr> 
map <Leader>fj :set ft=javascript<cr> 
map <Leader>fr :set ft=ruby<cr> 

" Fugitive
map <Leader>gd :Gdiff<cr>
map <Leader>gs :Gstatus<cr>
map <Leader>gc :Gcommit<cr>
map <Leader>ge :Gedit<cr>

" Smart way to move btw. windows
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

" Buffers
map <Leader>bd :bd<cr>
map <Leader>bn :bn<cr>
map <Leader>bp :bp<cr>
map <Leader>bo :only<cr>

" Copy history
map <Leader>re :reg<cr>

map <leader>xh :call HexHighlight()<Return>

" For the MakeGreen plugin and Ruby RSpec. 
autocmd BufNewFile, BufRead *_spec.rb compiler rspec

map <Leader>sg :set guifont=Monaco:h<cr>

map <buffer> <Leader>p :Mm <CR>

" Show syntax highlighting groups for word under cursor
nmap <Leader>sy :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  "filetype on
  " load the plugin and indent settings for the detected filetype
  filetype plugin indent on
  " OPTIONAL: This enables automatic indentation as you type.
  filetype indent on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  " jQuery Syntax highlighting
  au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

  " Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

  " md, markdown, and mk are markdown and define buffer-local preview
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

  " add json syntax highlighting
  au BufNewFile,BufRead *.json set ft=javascript

  " make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python  set tabstop=4 
endif

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" Tim Popes | aligning in insert mode"
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction
