set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle :BundleInstall
" required!
Bundle 'gmarik/vundle'

" My VIM Bundles:
"
" original repos on github
Bundle "rstacruz/sparkup", {"rtp": "vim/"}

Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-rails"
Bundle "tpope/vim-endwise"
Bundle "tpope/vim-surround"
Bundle "tpope/vim-repeat"
Bundle "tpope/vim-haml"

Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/syntastic"

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
Bundle "Townk/vim-autoclose"
Bundle "mutewinter/vim-indent-guides"
Bundle "Lokaltog/vim-powerline"
Bundle "othree/html5.vim"
Bundle "nono/vim-handlebars"
Bundle "gmarik/sudo-gui.vim"
Bundle "jcf/vim-latex"
Bundle "pangloss/vim-javascript"
Bundle "leshill/vim-json"

" vim-scripts github repos
Bundle "ZoomWin"
Bundle "L9"
Bundle "hexHighlight.vim"
Bundle "IndexedSearch"
Bundle "bufexplorer.zip"
Bundle "taglist.vim"

" Utility
Bundle "vimwiki"
Bundle "a.vim"
" (HT|X)ml tool
Bundle "ragtag.vim"
" Syntax highlight
Bundle "cucumber.zip"
Bundle "Markdown"
Bundle "jQuery"
" non github repos

" Bundle "git://git.wincent.com/command-t.git"

let g:Powerline_symbols = 'fancy'

" vim-indent-guides plugin setup
map <Leader>ig :IndentGuidesToggle<cr>

let g:indent_guides_guide_size = 1

" Enable file type detection
" filetype on
" load the plugin and indent settings for the detected filetype
filetype plugin indent on
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

let mapleader = ","

let coffee_compiler = '/usr/local/share/npm/bin/coffee'

set cursorline

set number
set ruler
syntax on

map <Leader>p p'[v']=
map <Leader>P P'[v']=

" Set encoding
set encoding=utf-8

" CTags for TList
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let TlistHighlightTag=0
set runtimepath+=/usr/local/share/vim/vimfiles/

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
map <Leader>me <ESC>/\v^[<=>]{7}( .*\|$)<cr>

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

" fast switch between .js and .coffee files with the alternate plugin
let g:alternateExtensions_coffee = 'js'
let g:alternateExtensions_js = 'coffee'
map <Leader>ma :A<cr>

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

" Status bar
set laststatus=2

set noequalalways

" NERDTree configuration
let NERDTreeIgnore=['\.rbc$', '\~$']
map <Leader><space> :NERDTreeToggle<cr>

" toggle Tagbar
map <Leader>ä :TagbarToggle<cr>

" use ZoomWin plugin
noremap <Leader><Leader> :ZoomWin<cr>

" switch to last opened buffer
map ä <C-^>

" paste clipboard register 0
map <Leader>ö "0p

" repeat last macro
map K @@

" repeat macro q
map <Leader>q @q

" goto last edit position
map ö g;<cr>
" goto previous edit position
map Ö g,<cr>

" go to last cursor position
map ü <c-i>
" delete content of line (but dont delete the whole line)
map Ü 0D

" Spell checking command
nmap <S-Up> zg
nmap <S-Down> zug
nmap <S-Right> ]s
nmap <S-Left> [s

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
set scrolloff=10
" toggle scrolloff with ss
nnoremap <Leader>ss :let &scrolloff=3-&scrolloff<cr>
map <Leader>sg :set scrolloff=15<cr>
map <Leader>sk :set scrolloff=3<cr>

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

" Use fj or jf as <Esc> alternative
inoremap fj <esc>
inoremap jf <esc>
inoremap JF <esc>
inoremap FJ <esc>
inoremap jF <esc>
inoremap Fj <esc>
inoremap Jf <esc>
inoremap fJ <esc>

inoremap öö <esc>ZZ


" Autoclose for following letters
"let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

"Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

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

map <Leader>lm :let g:Tex_MultipleCompileFormats = 'pdf'<cr>
"map <Leader>ld :let g:Tex_DefaultTargetFormat = 'pdf'<cr>

map <Leader>la :w<cr> ,ll
map <Leader>ld :w<cr> ,ll ,ls

" config for vimwiki
let g:vimwiki_hl_cb_checked = 1

" source vimrc
map <Leader>so :source ~/.vimrc<cr>

" MAPPINGS for quick config editing
map <Leader>vi :edit ~/Dropbox/Library/dotfiles/vimrc<cr>
map <Leader>zi :edit ~/Dropbox/Library/dotfiles/zshrc<cr>
map <Leader>gi :edit ~/.gvimrc<cr>
map <Leader>zn :edit ~/Dropbox/Library/dotfiles/vim/colors/znake.vim<cr>
map <Leader>rt :edit ~/Dropbox/Coding/ruby/rubytest.rb<cr>
map <Leader>ct :edit ~/Dropbox/Coding/coffeescript/Testing/test.coffee<cr>

fu! DeleteSigns()
  %s/"//gi
  %s/“//gi
  %s/„//gi
  %s/”//gi
endfu
map <Leader>de :call DeleteSigns()<cr>

fu! ReplaceWhatever()
  %s/"//gi
  %s/“//gi
  %s/„//gi
  %s/”//gi
  %s/best. /bestimmte /g
  %s/techn. /teschnische /g
  %s/=>/d.h./g
  %s/->/d.h./g
  %s/- //g
  %s/u. /und /g
  %s/v.a. /vor allem /g
  %s/o.a. /oder anderem/g
  %s/SW/Software/g
  %s/HW/Hardware/g
  %s/ISs/Informationssysteme/g
  %s/unterschiedl. /unterschiedliche /g
  %s/unbest. /unbestimmte /g
  %s/untersch. /unterschiedlich /g
  %s/bel. /beliebige /g
  %s/zeitl. /zeitlich /g
  %s/i.A. /im Allgemeinen /g
  %s/insbes. /insbesondere /g
  %s/technolog. /technologische /g
  %s/BS/Betriebssystem/g
  %s/DBs/Datenbanken/g
  %s/zw. /zwischen /g
endfu
map <Leader>rw :call ReplaceWhatever()<cr>

" Tabularaized for rails
function! IndentX()
  <
  Tabularize /^[^:]*\zs:/r1c0l0
  Tabularize /^[^=>]*\zs=>/l1
endfunction
map <Leader>iv :call IndentX()<cr>
" Invoke Tabularized
map <Leader>ta :Tabularize /

" make it easy to resize windows
map 6 <C-W>6<
map 7 <C-W>6>
map 5 <C-W>4-
map 4 <C-W>4+

map <Leader>4 <C-W>=

" use tab to switch buffers
noremap <tab> <C-w>w

" delete last word in normal mode
noremap <backspace> bdW

" move buffers
map 9 <C-W>L
map 8 <C-W>H

" close buffer
map <C-c> <c-w>c

" split buffer options
map <Leader>sv <c-w>v
map <Leader>sh <c-w>s
map <Leader>sr <c-w>r

" force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %


map <Leader>hl :set hlsearch! hlsearch?<cr>

" indent whole file jump back to current position
map <Leader>id mmgg=G'm

" indent paragraph of code
map <Leader>ib vip=

" insert new line
nmap t o<ESC>k
nmap T O<ESC>j

" make :W to :w -> no annoying error Message when typend wrong
cnoreabbrev W w

" CoffeeScript
map <Leader>cO :CoffeeCompile watch<cr>
map <Leader>co :CoffeeCompile watch vert<cr>
map <Leader>cp :CoffeeCompile unwatch<cr>
map <Leader>cr :CoffeeRun<cr>
map <Leader>sb :set scrollbind!<cr>
map <Leader>mc :CoffeeMake!<cr>

" delete content of whole buffer
map <Leader>da ggdG
" select content of whole buffer
map <Leader>va ggVG

" using the surround plugin
" operates on a normal word w
map <Leader>s csw
" operates on a big word W
map <Leader>S csW
" operates on a line
map <Leader>sl yss

" Use system clipboard for copy and paste
set clipboard=unnamed

nmap <Leader>sp :set spell!<cr>
" Set region to British English
set spelllang=de_at

map <Leader>se :set spelllang=en_gb<cr>
map <Leader>sd :set spelllang=de_at<cr>

map <Leader>rr :set makeprg=~/.rvm/bin/ruby-1.9.3-p194\ %<cr>:make<cr>

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
map <Leader>fth :set ft=html<cr>
map <Leader>ftj :set ft=javascript<cr>
map <Leader>ftr :set ft=ruby<cr>
map <Leader>ftl :set ft=tex<cr>
map <Leader>ftp :set ft=php<cr>
map <Leader>fts :set ft=sql<cr>
map <Leader>ftt :set ft=txt<cr>
map <Leader>ftm :set ft=markdown<cr>

" Fugitive
map <Leader>gd :Gdiff<cr>
map <Leader>gs :Gstatus<cr>
map <Leader>ga :Git status<cr>
map <Leader>gC :Gcommit<cr>i
map <Leader>gc :Gwrite<cr>:Gcommit<cr>i
map <Leader>ge :Gedit<cr>
map <Leader>gr :Gread<cr>
map <Leader>gw :Gwrite<cr>
map <Leader>gl :Git pull<cr>
map <Leader>gp :Git push<cr>
" stage current file, and enter commit message
map <Leader>gh :Git add %;Git commit -m ""<left>
" Show Git diff in window split when commiting
"autocmd FileType gitcommit DiffGitCached | wincmd p

" Space to toggle folds
nnoremap <Space> za
vnoremap <Space> za

"map <Leader>fs :mkview<cr>
"au BufWinEnter * silent! loadview

" Buffers
map <Leader>bd :bd<cr>
map <Leader>bn :bn<cr>
map <Leader>bp :bp<cr>
map <Leader>bo :only<cr>

" delete empty lines
map <Leader>dl :g/^$/d<cr>

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

  " Autocompile coffeescript buffer on save
  au BufWritePost *.coffee silent CoffeeMake!


  " Remember last location in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal g'\"" | endif

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=2 sts=2 sw=2 noexpandtab

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

  " add json syntax highlighting
  au BufNewFile,BufRead *.json set ft=javascript

  " make python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python  set tabstop=4
endif

map <Leader>st :SeeTab<cr>
" show tabs
fu! SeeTab()
  if !exists("g:SeeTabEnabled")
    let g:SeeTabEnabled = 0
  end
  if g:SeeTabEnabled==0
    syn match leadspace /^\s\+/ contains=syntab
    exe "syn match syntab /\\s\\{" . &sw . "}/hs=s,he=s+1 contained"
    hi syntab guibg=#800040
    let g:SeeTabEnabled=1
  else
    syn clear leadspace
    syn clear syntab
    let g:SeeTabEnabled=0
  end
endfunc
com! -nargs=0 SeeTab :call SeeTab()

"map <Leader>go :call GoToJS()<cr>

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
" Execute clear whitespace on save
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")


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
