unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

" base configuration
set number
set expandtab
set tabstop=4
set shiftwidth=4
retab

" Skeleton configuration
autocmd BufNewFile makefile 0r ~/.vim/templates/makeSkeleton

" Autocomplete brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Pluging manager
call plug#begin('~/.vim/plugged')

" Declare list of plugins
Plug 'mattn/emmet-vim'
Plug 'stanangeloff/php.vim'

call plug#end()
" after adding a new plug, :source ~/.vimrc to reload
" :PlugInstall to install plugins
" :PlugUpdate
" To remove, delete or comment out the plugin
" Reload vimrc as above
" Run :PlugClean
"
" plugin configurations
"
" emmet-vim leader key
let g:user_emmet_leader_key=','
