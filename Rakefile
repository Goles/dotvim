########################################################################
###
### Ben Bleything's Vim Setup
### Based on the work of many others. See README.rdoc for credits.
###
### Git Hubs: http://github.com/bleything/dotvim
### Internet Electronic Mail: ben@bleything.net
###
########################################################################

require 'pathname'

task :default do
  puts "Hi! All this Rakefile can do right now is update the bundles:"
  puts # blank line
  puts "  $ rake update:bundles"
end

desc 'Update everything!'
task :update => [ 'update:bundles' ]

namespace :update do

  BUNDLES = {
    # plugins
    :ack           => "http://www.vim.org/scripts/download_script.php?src_id=10433",
    :nerdcommenter => "git://github.com/scrooloose/nerdcommenter.git",
    :autopair => "git://github.com/jiangmiao/auto-pairs.git",
    :ctrlp        => "git://github.com/kien/ctrlp.vim.git",
    :syntax_git       => "git://github.com/tpope/vim-git.git",
    :vim_markdown => "git@github.com:plasticboy/vim-markdown.git",
    :minibufexpl => "git://github.com/fholgado/minibufexpl.vim.git",
    :gitgutter => "git://github.com/airblade/vim-gitgutter.git",

    # This is for Objective-C Coding
    # :clang_complete => "git://github.com/Goles/Clang_Complete-Pathogen.git", #crazy branch
    # :clang_complete => "git://github.com/Rip-Rip/clang_complete.git", #official branch
    # :YouCompleteMe => "git://github.com/Valloric/YouCompleteMe.git",

    # :objcbracket => "git://github.com/Goles/objcbracket.vim.git",
    # :cocoa_vim => "git://github.com/markschabacker/cocoa.vim.git",
    # :vim_ios => "git://github.com/eraserhd/vim-ios.git"

    # For completion
    # :neocomplcache => "git://github.com/Shougo/neocomplcache.git",
    # :neosnippet => "git://github.com/Shougo/neosnippet.git",
  }

  desc "update any bundles defined in the Rakefile"
  task :bundles do

    bundle_home = Pathname.new( ENV['HOME'] ) + '.vim' + 'bundle'
    mkdir_p bundle_home

    BUNDLES.sort_by {|k,v| k.to_s }.each do |bundle, location|
      target_path = bundle_home + bundle.to_s

      puts "*" * 72
      puts "*** Instaling #{bundle} to #{target_path} from #{location}"
      puts # blank line

      rm_rf target_path

      case location.match( /^(.*?):/ )[1]
      when 'git'
        sh "git clone #{location} #{target_path} > /dev/null"
        rm_rf target_path + '.git'
      when 'http'
        mkdir_p target_path
        sh "cd #{target_path} && curl -s '#{location}' | tar zx -"
      end

      docdir = target_path + 'doc'
      if docdir.exist?
        puts "doc dir exists; tagging"
        sh "vim -u NONE -esX -c 'helptags #{docdir}' -c quit"
      end

      puts # blank line
    end
  end # task :bundles

end # namespace :update

