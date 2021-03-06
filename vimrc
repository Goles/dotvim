""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""
""" Ben Bleything's Vim Setup
""" Based on the work of many others. See README.rdoc for credits.
"""
""" Git Hubs: http://github.com/bleything/dotvim
""" Internet Electronic Mail: ben@bleything.net
"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""
""" To install, make this directory live at ~/.vim and then make the
""" vimrc file live at ~/.vimrc.  You may also want to run:
"""
"""   $ cd ~/.vim && rake update
"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load up everything in ~/.vim/bundle using pathogen.vim
call pathogen#incubate()

source $HOME/.vim/basic
source $HOME/.vim/bindings
source $HOME/.vim/plugins
source $HOME/.vim/window
source $HOME/.vim/editing
source $HOME/.vim/filetypes

syntax enable
set background=light
colorscheme jellybeans
set clipboard=unnamed

"" Switch between Dark and bright
nnoremap <silent> <F5> :colorscheme Tomorrow<CR>
nnoremap <silent> <F6> :colorscheme Tomorrow-Night-Eighties<CR>
nnoremap <silent> <F7> :colorscheme Tomorrow-Night<CR>
