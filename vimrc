set nocompatible

let mapleader = ","

" Pathogen
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

set cursorline

set number
set ruler
syntax on


" Auto indent after pasting
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

" Useful status information at bottom of screen
set stl=%f\ %m\ %r\ %{fugitive#statusline()}\ Buf:%n\ Lin:%l/%L\ Col:%c\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %)%P

" disable VIM welcome screen
set shortmess+=I

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

"Open last/alternate buffer
noremap <Leader><Leader> :only<cr>

map ä <C-^>

map <Leader>ö "0p

" repeat last record
map K @@
map <Leader>q @q

" go to last edit point
map ö g;
" go to newer edit point
map Ö g,

" go to last cursor position
map ü <C-o>

" delete Line
map Ü 0D

" Spell checking command
nmap <S-Up> zg
nmap <S-Down> zug
nmap <S-Right> ]s
nmap <S-Left> [s

map <Leader>bl :set background=light<cr>
map <Leader>bk :set background=dark<cr>

" cursorline toggle
map <Leader>lc :set cursorline!<cr>

map <Leader>hs <C-CR>

" For usual moving behaviour in wrapped lines
map j gj
map k gk

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Command-T configuration
let g:CommandTMaxHeight=10

" Show 3 lines of context around the cursor.
set scrolloff=15
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

" :Ack
map <Leader>ak :Ack<space>

" Show tabs and Carriage Returns

" Use fj or jf as <Esc> alternative
inoremap fj <esc>
inoremap jf <esc>
inoremap JF <esc>
inoremap FJ <esc>
inoremap jF <esc>
inoremap Fj <esc>
inoremap Jf <esc>
inoremap fJ <esc>

" Autoclose for following letters
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

"Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

"LaTeX Stuff
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

let g:vimwiki_hl_cb_checked = 1
"let g:vimwiki_fold_lists = 1
"let g:vimwiki_folding = 1

" MAPPINGS
" source vimrc
map <Leader>so :source ~/.vimrc<cr>
map <Leader>vi :edit ~/.vimrc<cr>
map <Leader>to :edit ~/Dropbox/Library/vimwiki/index.wiki<cr>
map <Leader>zi :edit ~/.zshrc<cr>
map <Leader>gi :edit ~/.gvimrc<cr>
map <Leader>zn :edit ~/Dropbox/Library/dotfiles/vim/colors/znake.vim<cr>
" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

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

" easy split window movement
map <Leader>hh <C-w>h
map <Leader>jj <C-w>j
map <Leader>kk <C-w>k
map <Leader>ll <C-w>l

" make it easy to resize windows
map + <C-W>4+
map - <C-W>4-
map 2 <C-W>6>
map 1 <C-W>6<

" use tab to switch buffers
noremap <tab> <C-w>w
" change last word
noremap <backspace> bdW

" move buffers
map 9 <C-W>L
map 8 <C-W>H

" close buffer
map <C-c> <c-w>c
map <Leader>sv <c-w>v
map <Leader>sh <c-w>s
map <Leader>sr <c-w>r

" horizontal split window
map <C-x> <c-w>s

" make the actual window bigger (horizontal split)
map <Leader>bi <C-w>10+
map <Leader>bu <C-w>10-

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

" center current cursor line
map M zz

" open Tlist (for ctags)
map <Leader>tl :Tlist<cr>

"Remove All the Trailing Whitespaces
"nnoremap <Leader>ws :%s/\s\+$//<cr>:let @/=''<cr>

" CoffeeScript
map <Leader>cO :CoffeeCompile watch<cr>
map <Leader>co :CoffeeCompile watch vert<cr>
map <Leader>cp :CoffeeCompile unwatch<cr>
map <Leader>cr :CoffeeRun<cr>
map <Leader>sb :set scrollbind!<cr>
map <Leader>mc :CoffeeMake!<cr>


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
map <Leader>fl :set ft=tex<cr>
map <Leader>fp :set ft=php<cr>
map <Leader>fs :set ft=sql<cr>
map <Leader>ft :set ft=txt<cr>
map <Leader>fj :set fm=markdown<cr>

" Fugitive
map <Leader>gd :Gdiff<cr>
map <Leader>gD :Gstatus<cr>:Gdiff<cr>
map <Leader>gs :Gstatus<cr>
map <Leader>gc :Gcommit<cr>i
map <Leader>ge :Gedit<cr>
map <Leader>gr :Gread<cr>
map <Leader>gw :Gwrite<cr>
map <Leader>gl :Git pull<cr>
map <Leader>gp :Git push<cr>
" save & stage current file, open commit window with insert mode
map <Leader>gh :w<cr>:Gwrite<cr>:Gcommit<cr>i

" Buffers
map <Leader>bd :bd<cr>
map <Leader>bn :bn<cr>
map <Leader>bp :bp<cr>
map <Leader>bo :only<cr>

" VCS Command Commit
map <Leader>vc :VCSCommit<cr>
map <Leader>vd :VCSDiff<cr>
map <Leader>va :VCSAdd<cr>

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
  "au BufWritePost *.coffee silent CoffeeMake!

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


" TESTING AREA
autocmd FileType gitcommit DiffGitCached | wincmd p

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org call org#SetOrgFileType()

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

 "function! OrgCustomColors()
    "" various Org syntax item highlighting statements below
    "" are the current defaults.  Uncomment and edit a line if you
    "" want different highlighting for the element.

    "" Below are defaults for any TODOS you define.  TODOS that
    "" come before the | in a definition will use  'NOTDONETODO'
    "" and those that come after are DONETODO
    "hi! DONETODO guifg=green ctermfg=green
    "hi! NOTDONETODO guifg=red ctermfg=lightred

    "" Heading level highlighting is done in pairs, one for the
    "" heading when unfolded and one for folded.  Default is to make
    "" them the same except for the folded version being bold:
    "" assign OL1 pair for level 1, OL2 pair for level 2, etc.
    "hi! OL1 guifg=somecolor guibg=somecolor
    "hi! OL1Folded guifg=somecolor guibg=somecolor gui=bold


    "" Tags are lines below headings that have :colon:separated:tags:
    "hi! Org_Tag guifg=lightgreen ctermfg=blue

    ""  Lines that begin with '#+' in column 0 are config lines
    "hi! Org_Config_Line guifg=darkgray ctermfg=magenta

    "" Drawers are :PROPERTIES: and :LOGBOOK: lines and their associated
    "" :END: lines
    "hi! Org_Drawer guifg=pink ctermfg=magenta
    "hi! Org_Drawer_Folded guifg=pink ctermfg=magenta gui=bold cterm=bold

    "" This applies to value names in :PROPERTIES: blocks
    "hi! Org_Property_Value guifg=pink ctermfg=magenta

    "" Three lines below apply to different kinds of blocks
    "hi! Org_Block guifg=#555555 ctermfg=magenta
    "hi! Org_Src_Block guifg=#555555 ctermfg=magenta
    "hi! Org_Table guifg=#888888 guibg=#333333 ctermfg=magenta

    "" Dates are date specs between angle brackets (<>) or square brackets ([])
    "hi! Org_Date guifg=magenta ctermfg=magenta gui=underline cterm=underline

    "" Org_Star is used to "hide" initial asterisks in a heading
    "hi! Org_Star guifg=#444444 ctermfg=darkgray

    "hi! Props guifg=#ffa0a0 ctermfg=gray

    "" Bold, italics, underline, and code are highlights applied
    "" to character formatting
    "hi! Org_Code guifg=darkgray gui=bold ctermfg=14
    "hi! Org_Itals gui=italic guifg=#aaaaaa ctermfg=lightgray
    "hi! Org_Bold gui=bold guifg=#aaaaaa ctermfg=lightgray
    "hi! Org_Underline gui=underline guifg=#aaaaaa ctermfg=lightgray
    "hi! Org_Lnumber guifg=#999999 ctermfg=gray

    "" These lines apply to links: [[link]], and [[link][link desc]]
    "if has("conceal")
        "hi! default linkends guifg=blue ctermfg=blue
    "endif
    "hi! Org_Full_Link guifg=cyan gui=underline ctermfg=lightblue cterm=underline
    "hi! Org_Half_Link guifg=cyan gui=underline ctermfg=lightblue cterm=underline

    ""  Applies to the Heading line that can be displayed in column view
    "highlight OrgColumnHeadings guibg=#444444 guifg=#aaaaaa gui=underline

 "endfunction
