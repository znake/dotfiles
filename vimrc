set nocompatible
filetype off

set shell=/bin/sh
set guifont=Monaco:h11            " Font family and font size. => 1280x800px
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=r                 " Don't show right scrollbar
set go-=L

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

color znake

" let Vundle manage Vundle :BundleInstall
" required!
Bundle 'gmarik/vundle'

" My VIM Bundles:
"
" original repos on github

Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-endwise"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-repeat"
Bundle "tpope/vim-haml"

Bundle "int3/vim-extradite"

Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/syntastic"

Bundle "duwanis/tomdoc.vim"
Bundle "mileszs/ack.vim"
Bundle "kien/ctrlp.vim"
Bundle "msanders/snipmate.vim"
Bundle "godlygeek/tabular"
Bundle "majutsushi/tagbar"
Bundle "kchmck/vim-coffee-script"
Bundle "altercation/vim-colors-solarized"
Bundle "tsaleh/vim-matchit"
Bundle "ervandew/supertab"
Bundle "vim-ruby/vim-ruby"
Bundle "mutewinter/vim-indent-guides"
Bundle "Lokaltog/vim-powerline"
Bundle "othree/html5.vim"
Bundle "gmarik/sudo-gui.vim"
Bundle "jcf/vim-latex"
Bundle 'jelera/vim-javascript-syntax'
Bundle "leshill/vim-json"
Bundle "hallison/vim-markdown"
Bundle "goldfeld/vim-seek"
Bundle "airblade/vim-gitgutter"
Bundle "sjl/gundo.vim"
Bundle "nelstrom/vim-visual-star-search"
Bundle "terryma/vim-multiple-cursors"
Bundle "nono/vim-handlebars"
Bundle "heartsentwined/vim-emblem"

" vim-scripts github repos
Bundle "ZoomWin"
Bundle "hexHighlight.vim"
Bundle "IndexedSearch"
Bundle "bufexplorer.zip"
Bundle "taglist.vim"
Bundle "AutoClose--Alves"

" Utility
Bundle "vimwiki"
Bundle "a.vim"
" Syntax highlight
Bundle "cucumber.zip"
Bundle "jQuery"

" currently unused
Bundle "rstacruz/sparkup", {"rtp": "vim/"}
"Bundle "Lokaltog/vim-easymotion"

" Enable file type detection
" filetype on
" load the plugin and indent settings for the detected filetype
filetype plugin indent on
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

let mapleader = ","

let coffee_compiler = '/Users/jakob/lib/node_modules/coffee-script/bin/coffee'

set cursorline

set foldlevel=99

let g:Powerline_symbols = 'fancy'

let g:SeekKey = '<Space>'
let g:SeekBackKey = '<S-Space>'

map <Leader>gu :GundoToggle<cr>

" vim-indent-guides plugin setup tabs
map <Leader>ig :IndentGuidesToggle<cr>

"let g:indent_guides_guide_size = 1
" Allow the cursor to go in to 'invalid' places
"set virtualedit=all
map <Leader>ve :set virtualedit=all<cr>
" Don't allow the cursor to go in to 'invalid' places
map <Leader>vb :set virtualedit=block<cr>

set number
set ruler
syntax on

map <Leader>p p'[v']=
map <Leader>P P'[v']=

" reload all the snippets of snipmate
map <Leader>sn :call ReloadAllSnippets()<cr>

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

" find merge conflict markers
map <Leader>me <ESC>/\v^[<=>]{7}( .*\|$)<cr>zz

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
" Disable Synstastic for Latex
let g:syntastic_disabled_filetypes = ['tex']
let g:syntastic_mode_map = { 'mode': 'active',
			   \ 'active_filetypes': ['coffee', 'html', 'ruby', 'php', 'javascript', 'python', 'haml'],
			   \ 'passive_filetypes': ['tex'] }

" disable VIM welcome screen
set shortmess+=I

let g:ctrlp_max_height = 20

" Alternate plugin
map <Leader>ma :A<cr>
" fast switch between .js and .coffee files with the alternate plugin
let g:alternateExtensions_coffee = 'js'
let g:alternateExtensions_js = 'coffee'
let g:alternateExtensions_haml = 'html'
let g:alternateExtensions_html = 'haml'
let g:alternateExtensions_sass = 'css'
let g:alternateExtensions_css = 'sass'

" highlight column 80 to try not to get over 80 sings a line
set cc=80

" Searching
"set hlsearch
set incsearch
set ignorecase
set smartcase " But case-sensitive if expression contains a capital letter.
"set wildset ignorecase            " Case-insensitive searching.

" Softwrap for VIM
set wrap linebreak textwidth=0
set showbreak=>

" Tab completion
set wildmenu " Enhanced command line completion.
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Bufferexplorer
noremap <silent> <m-F11> :BufExplorerHorizontalSplit<CR>
noremap <silent> <c-F11> :BufExplorerVerticalSplit<CR>

" Status bar
set laststatus=2

set noequalalways

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader><space> :NERDTreeToggle<cr>
map <Leader>nt :NERDTreeToggle<cr>:NERDTreeToggle<cr>
map <Leader>bb :NERDTreeFromBookmark 
"map <Leader>nt :NERDTree %<cr>
map <Leader>cö :let NERDTreeIgnore=['\.rbc$', '\~$', '\.js']<cr>R
map <Leader>cÖ :let NERDTreeIgnore=['\.rbc$', '\~$']<cr>R
let g:NERDTreeMapHelp = '<F1>'

let g:tagbar_autofocus = 1
" toggle Tagbar
map <Leader>tl :TagbarToggle<cr>

map <Leader><Leader> :ZoomWin<cr>

" switch to last opened buffer
map ä <C-^>
map Ä @@

map ü ''
" delete content of line (but dont delete the whole line)
map Ü 0D

" paste clipboard register 0
map <Leader>ö "0p

" next hunk for gitgutter
nmap gn <Plug>GitGutterNextHunk
nmap gl <Plug>GitGutterPrevHunk

" repeat last macro
map K @q
map L @w
map <Leader>hl :set hlsearch! hlsearch?<CR>

" repeat macro q
map <Leader>q @q

" goto last edit position
map ö g;<cr>
" goto previous edit position
map Ö g,<cr>

" Spell checking command
nmap <S-Up> zg
nmap <S-Down> zug
nmap <S-Right> ]s
nmap <S-Left> [s

map <Leader>tn :tabnext<cr>
map <Leader>tp :tabprevious<cr>
map <D-L> :tabnext<cr>
map <D-H> :tabprevious<cr>


" set background color
map <Leader>bl :set background=light<cr>
map <Leader>bk :set background=dark<cr>

" cursorline toggle
map <Leader>lc :set cursorline!<cr>

" for usual moving behaviour in wrapped lines
map j gj
map k gk

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Show 3 lines of context around the cursor.
"set scrolloff=5
" toggle scrolloff with ss
nnoremap <Leader>su :let &scrolloff=10-&scrolloff<cr>
set scrolloff=10

nnoremap <Leader>ss :w !sudo tee %<cr>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

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

" % to bounce from do to end etc.
runtime! macros/matchit.vim

" delete Text and go switch to insert mode between HTML-Tags
map <Leader>< F>lct<

inoremap ää <esc>ZZ

" Autoclose for following letters
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

"Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="


" config for vimwiki
let g:vimwiki_hl_cb_checked = 1
map <Leader>do :VimwikiToggleListItem<cr>

" source vimrc
map <Leader>so :source ~/.vimrc<cr>

" MAPPINGS for quick config editing
map <Leader>vi :edit ~/Dropbox/Library/dotfiles/vimrc<cr>
map <Leader>zi :edit ~/Dropbox/Library/dotfiles/zshrc<cr>
map <Leader>ti :edit ~/Dropbox/Library/dotfiles/tmux.conf<cr>
map <Leader>gi :edit ~/Dropbox/Library/dotfiles/gvimrc<cr>
map <Leader>zn :edit ~/Dropbox/Library/dotfiles/vim/colors/znake.vim<cr>
map <Leader>bt :edit ~/Dropbox/Library/dotfiles/NERDTreeBookmarks<cr>

" mappings for the quickfix window
map <Leader>co :copen<cr>
map + :cnext<cr>
map <D-+> :cprevious<cr>
map <Leader>ck :cclose<cr>

fu! ReplaceUmlauts()
  %s/Ä/AE/gi
  %s/Ö/OE/gi
  %s/Ü/UE/gi
  %s/ä/ae/gi
  %s/ö/oe/gi
  %s/ü/ue/gi
endfu

fu! ReplaceUmlautsHtml()
  %s/Ä/&Auml;/gi
  %s/Ö/&Ouml;/gi
  %s/Ü/&Uuml;/gi
  %s/ä/&auml;/gi
  %s/ö/&ouml;/gi
  %s/ü/&uuml;/gi
endfu

" Invoke Tabularized
vmap <Leader>ta :Tabularize /
vmap <Leader>tj :Tabularize /=<cr>
vmap <Leader>tk :Tabularize/:\zs<cr>


" close buffers without need switching to them
map <Leader>hd <C-w>h:bd<cr>
map <Leader>ld <C-w>l:bd<cr>
map <Leader>kd <C-w>k:bd<cr>
map <Leader>jd <C-w>j:bd<cr>
map <Leader>dd <C-w>h:bd<cr>:Gstatus<cr>:bd<cr>
map <Leader>dg :Gstatus<cr>:bd<cr>

" make it easy to resize windows
map 6 <C-W>6<
map 7 <C-W>6>
map 5 <C-W>4+
map 4 <C-W>4-

map <Leader>4 <C-w>=

" use tab to switch buffers
noremap <tab> <C-w>w

" delete last word in normal mode
"noremap <backspace> bdw

" move buffers
map 9 <C-W>L
map 8 <C-W>H

" close buffer
map <C-c> <c-w>c

" sudo save
cmap w!! %!sudo tee > /dev/null %

" split buffer options
map <Leader>sv <c-w>v<c-w>l
map <Leader>sh <c-w>s<c-w>j
map <Leader>sr <c-w>r

" indent whole file jump back to current position
"map <Leader>id mmgg=G'm

" insert new line
nmap t o<ESC>k
nmap T O<ESC>j

" make :W to :w -> no annoying error Message when typend wrong
cnoreabbrev W w

" Autocompile coffeescript buffer on save
"au BufWritePost *.coffee silent CoffeeMake!

map <Leader>c0 :au BufWritePost *.coffee silent CoffeeMake!<cr>
" CoffeeScript
map <Leader>cr :CoffeeCompile watch vert<cr>
map <Leader>cR :CoffeeCompile watch<cr>
map <Leader>cP :CoffeeCompile unwatch<cr>
"map <Leader>cr :CoffeeRun<cr>
map <Leader>mc :CoffeeMake!<cr>

map <Leader>sbb :set scrollbind!<cr>

" replaces ruby 1.8 hash syntax with 1.9 in the whole file
map <Leader>sI ma:%s/:\(\w*\) =>/\1:/g<cr>'a

" replaces ruby 1.8 hash syntax with 1.9 within the current selection 
map <Leader>si :s/:\(\w*\) =>/\1:/g<cr> 

" replaces under_score to camelCase
map <Leader>CU ma:%s#_\(\l\)#\u\1#g<cr>'a
" just within visual selection
map <Leader>Cu :s#_\(\l\)#\u\1#g<cr>

" delete content of whole buffer
map <Leader>da ggdG
" select content of whole buffer
map <Leader>va ggVG

" using the surround plugin
" tip: use S without leader to quote visual selection
" operates on a normal word w
map <Leader>s csw
" operates on a big word W
map <Leader>S csW
" operates on a line
map <Leader>sl yss
" change ' to "
map <Leader>" cs'"
" change " to '
map <Leader>' cs"'
" use cs to change surroundings

map <Leader>aa :Ack<cr>

" Use system clipboard for copy and paste
if $TMUX == ''
  set clipboard=unnamed
endif

nmap <Leader>sp :set spell!<cr>
" Set region to British English
set spelllang=de_at

" switch languages
map <Leader>se :set spelllang=en_gb<cr>
map <Leader>sd :set spelllang=de_at<cr>

map <Leader>rr :set makeprg=~/.rvm/bin/ruby-1.9.3-p327\ %<cr>:make<cr>

" Command-Shift-F for Ack
map <D-F> :Ack<space>

" override default sparkup mapping because this feels better for me
"let g:sparkupExecuteMapping = '<c-i>'

" Command-Option-ArrowKey to switch viewports
map <D-M-Up> <C-w>k
imap <D-M-Up> <Esc> <C-w>k
map <D-M-Down> <C-w>j
imap <D-M-Down> <Esc> <C-w>j
map <D-M-Right> <C-w>l
imap <D-M-Right> <Esc> <C-w>l
map <D-M-Left> <C-w>h
imap <D-M-Left> <C-w>h

" Leader shortcuts for Rails commands
map <Leader>rc :Rcontroller<cr>
map <Leader>rm :Rmodel<cr>
map <Leader>rv :Rview<cr>
map <Leader>rh :Rhelper<cr>
map <Leader>rp :Rpreview<cr>
map <Leader>rj :Rjavascript<cr>
map <Leader>rl :Rlayout<cr>
map <Leader>rs :Rspec<cr>

map <Leader>rt :!rspec --drb --color %<cr>
map <Leader>rg :!rspec --drb --color %:

" Filetype mappings
map <Leader>fth :set ft=html<cr>
map <Leader>ftj :set ft=javascript<cr>
map <Leader>ftr :set ft=ruby<cr>
map <Leader>ftl :set ft=tex<cr>
map <Leader>ftp :set ft=php<cr>
map <Leader>fts :set ft=sql<cr>
map <Leader>ftt :set ft=txt<cr>
map <Leader>ftm :set ft=markdown<cr>
map <Leader>ftc :set ft=coffee<cr>
map <Leader>ftf :set ft=

" Fugitive
map <Leader>gd :Gdiff<cr>
map <Leader>gs :Gstatus<cr>
map <Leader>gC :Gcommit<cr>i
map <Leader>gc :Gwrite<cr>:Gcommit<cr>i
map <Leader>gl :Git pull<cr>
map <Leader>gp :Git push<cr>
map <Leader>gg :Glog -15<cr>
map <Leader>gt :Extradite!<cr>
map <Leader>gb :Gblame<cr>
map <Leader>ge :Gedit master:%

noremap _ ]czz

" reverts current file to the last commit
map <Leader>gr :Git checkout %<cr>
" stage current file, and enter commit message
map <Leader>gh :Git add %;Git commit -m ""<left>

" Buffers
map <Leader>bd :bd<cr>
map <Leader>bn :bn<cr>
map <Leader>bp :bp<cr>
map ' :bp<cr>
map <Leader>bo :only<cr>

" delete empty lines
map <Leader>dl :g/^$/d<cr>

" always open buffer-explorer with horizontal split per default
map <Leader>be :BufExplorerHorizontalSplit<cr>

" jump to defenition of the selected word
" useful in helpfiles because strg + ]
" is not very comfortable on german keyboards
map <Leader>jj <C-]>

" show copy history
map <Leader>re :reg<cr>

" show all hex colors
map <Leader>xh :call HexHighlight()<cr>

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  "filetype on
  " load the plugin and indent settings for the detected filetype
  filetype plugin indent on
  " OPTIONAL: This enables automatic indentation as you type.
  filetype indent on

  " Remember last location in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Get standard two-space indentation in CoffeeScript files
  au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

  " don´t highlight cursor line in LaTeX and .txt files and enable
  " spellchecking
  autocmd FileType tex setlocal nocursorline spell
  "autocmd FileType txt setlocal nocursorline
  au BufRead,BufNewFile *.txt setlocal nocursorline

  au BufRead,BufNewFile *.md setlocal spell nocursorline
  au BufRead,BufNewFile *.markdown setlocal spell nocursorline

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
  " jQuery Syntax highlighting
  au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

  " Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
  au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

  " add haml syntax highlighting for hamljs files
  au BufNewFile,BufRead *.hamljs set ft=haml

  " add json syntax highlighting
  au BufNewFile,BufRead *.json set ft=javascript

  " add json syntax highlighting
  au BufNewFile,BufRead *.coffee.erb set ft=coffee

  " make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python  set tabstop=4
  au FileType javascript  set tabstop=4
endif

" Remove trailing whitespace on save
function! Preserve(command)
    " Save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" get file path in clipboard
nmap cp :let @" = expand("%")<cr>"0pBdE:w<cr>

" Execute clear whitespace on save
"autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")
map <Leader>sw :call Preserve("%s/\\s\\+$//e")<cr>

" *************** LaTeX Stuff ***************
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_SmartKeyQuote = 0
let g:Imap_UsePlaceHolders = 0

let g:Tex_CompileRule_dvi = 'latex --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = 'dvips -Pwww -o $*.ps $*.dvi'
let g:Tex_CompileRule_pspdf = 'ps2pdf $*.ps'
let g:Tex_CompileRule_dvipdf = 'dvipdfm $*.dvi'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 --interaction=nonstopmode $*'

let g:Tex_ViewRule_dvi = 'texniscope'
let g:Tex_ViewRule_ps = 'Preview'
let g:Tex_ViewRule_pdf = 'Skim'

let g:Tex_FormatDependency_ps  = 'dvi,ps'
let g:Tex_FormatDependency_pspdf = 'dvi,ps,pspdf'
let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'

let g:Tex_EnvironmentMenus = 0
let g:Tex_FontMaps = 0
let g:Tex_FontMenus = 0
let g:Tex_SectionMenus = 0
let g:Tex_SectionMaps = 0
let g:Tex_IgnoreLevel = 8
let g:Tex_GotoError = 0
 let g:Tex_IgnoredWarnings ='
       \"Underfull\n".
       \"Overfull\n".
       \"specifier changed to\n".
       \"You have requested\n".
       \"Missing number, treated as zero.\n".
       \"There were undefined references\n".
       \"Citation %.%# undefined\n".
       \"\oval, \circle, or \line size unavailable\n"'
"For proper inverse sync with Skim you ned to add this in your Skim Sync Settings
"Settings: own
"Command: mvim
"Arguments: --remote-silent +":%line;foldo!" "%file"

let g:Tex_MultipleCompileFormats = 'pdf'

map <Leader>lm :let g:Tex_MultipleCompileFormats = 'pdf'<cr>
map <D-r> ,ll

let Tex_FoldedSections = ""

"map <Leader>ld :let g:Tex_DefaultTargetFormat = 'pdf'<cr>

"map <Leader>lm :w<cr> ,ll ,ls

" improve performance of ctrlp
"let ctrlp_filter_greps = "".
    "\ "egrep -iv '\\.(" .
    "\ "jar|class|swp|swo|log|so|o|pyc|jpe?g|png|gif|mo|po" .
    "\ ")$' | " .
    "\ "egrep -v '^(\\./)?(" .
    "\ "deploy/|lib/|classes/|libs/|deploy/vendor/|.git/|.hg/|.svn/|.*migrations/" .
    "\ ")'"

"let my_ctrlp_git_command = "" .
    "\ "cd %s && git ls-files | " .
    "\ ctrlp_filter_greps

"if has("unix")
    "let my_ctrlp_user_command = "" .
    "\ "find %s '(' -type f -or -type l ')' -maxdepth 15 -not -path '*/\\.*/*' | " .
    "\ ctrlp_filter_greps
"endif

"let g:ctrlp_user_command = ['.git/', my_ctrlp_git_command, my_ctrlp_user_command]
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif
