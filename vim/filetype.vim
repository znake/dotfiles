" enables HTML Snippets also in .erb files
augroup filetypedetect
au BufNewFile,BufRead *.html.erb set filetype=html.eruby-rails
au BufNewFile,BufRead *.js.erb set filetype=javascript.ruby
augroup end

