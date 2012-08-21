#!/usr/bin/env ruby

git_bundles = [
  "git://github.com/mileszs/ack.vim.git",
  "git://github.com/henrik/vim-indexed-search.git",
  "git://github.com/kien/ctrlp.vim.git",
  "git://github.com/vim-scripts/hexHighlight.vim.git",
  "git://github.com/scrooloose/nerdcommenter.git",
  "git://github.com/scrooloose/nerdtree.git",
  "git://github.com/msanders/snipmate.vim.git",
  "git://github.com/scrooloose/syntastic.git",
  "git://github.com/godlygeek/tabular.git",
  "git://github.com/majutsushi/tagbar.git",
  "git://github.com/kchmck/vim-coffee-script.git",
  "git://github.com/altercation/vim-colors-solarized.git",
  "git://github.com/tpope/vim-endwise.git",
  "git://github.com/tpope/vim-fugitive.git",
  "git://github.com/tsaleh/vim-matchit.git",
  "git://github.com/tpope/vim-rails.git",
  "git://github.com/vim-ruby/vim-ruby.git",
  "git://github.com/ervandew/supertab.git",
  "git://github.com/tpope/vim-surround.git"
]

vim_org_scripts = [
  ["AutoClose",  "1849",  "plugin"],
  ["bufexplorer",  "42",  "plugin"],
  ["taglist",     "273",  "plugin"],
  ["latex",       "475",  "plugin"],
  ["vimwiki",    "2226",  "plugin"]
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "../vim/bundle/")

FileUtils.cd(bundles_dir)

puts "Trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "  Unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end

vim_org_scripts.each do |name, script_id, script_type|
  puts "  Downloading #{name}"
  local_file = File.join(name, script_type, "#{name}.vim")
  FileUtils.mkdir_p(File.dirname(local_file))
  File.open(local_file, "w") do |file|
    file << open("http://www.vim.org/scripts/download_script.php?src_id=#{script_id}").read
  end
end

