"=============================================================================
" File: gist.vim
" Author: Yasuhiro Matsumoto <mattn.jp@gmail.com>
" WebPage: http://github.com/mattn/gist-vim
" License: BSD
" GetLatestVimScripts: 2423 1 :AutoInstall: gist.vim
" script type: plugin

if &cp || (exists('g:loaded_gist_vim') && g:loaded_gist_vim)
  finish
endif
let g:loaded_gist_vim = 1
let g:github_token = '06f0999b53745432e2847ffb5173898a64a2f291'

command! -nargs=? -range=% Gist :call gist#Gist(<count>, <line1>, <line2>, <f-args>)

" vim:set et:
