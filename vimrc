" symlink to . ~/.vimrc

call pathogen#runtime_append_all_bundles()
syntax on
"set number
set numberwidth=1 
set t_Co=256
set background=dark
inoremap jk <Esc>
noremap mk :make<CR>
" RealTab
inoremap r<Tab> <C-V><Tab>


" expand tabs with two spaces (= Mozilla guidelines)
set tabstop=2
set shiftwidth=2
set softtabstop=2

" indentation
set expandtab
set cindent
set smartindent
set autoindent

"colorscheme solarized
"colorscheme Tomorrow-Night
colorscheme Monokai

set listchars=tab:>-,trail:-
set list

" Escape/unescape & < > HTML entities in range (default current line).
function! HtmlEntities(line1, line2, action)
  let search = @/
  let range = 'silent ' . a:line1 . ',' . a:line2
  if a:action == 0  " must convert &amp; last
    execute range . 'sno/&lt;/</eg'
    execute range . 'sno/&gt;/>/eg'
    execute range . 'sno/&amp;/&/eg'
  else              " must convert & first
    execute range . 'sno/&/&amp;/eg'
    execute range . 'sno/</&lt;/eg'
    execute range . 'sno/>/&gt;/eg'
  endif
  nohl
  let @/ = search
endfunction

command! -range -nargs=1 Entities call HtmlEntities(<line1>, <line2>, <args>)

noremap <silent> \h :Entities 0<CR>
noremap <silent> \H :Entities 1<CR>

set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:userName = 'Alexandre BM'
let g:userEmail = 's@rednaks.tn'

"
:hi Type ctermfg=208 gui=italic guifg=#fd971f
:hi Structure ctermfg=148 guifg=#a6e22e 
set tags+=~/.vim/tags/stm_tags
set tags+=~/.vim/tags/opencv

