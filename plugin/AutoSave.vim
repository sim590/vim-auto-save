" ============================================================================
" File:         AutoSave.vim
" Last Changed: 2012-12-10
" ============================================================================

let s:save_cpo = &cpo
set cpo&vim

let g:auto_save = 0

set updatetime=200
au CursorHold,InsertLeave * call AutoSave()
command! AutoSaveToggle :call AutoSaveToggle()
nmap <Leader>as :AutoSaveToggle<CR>

function! AutoSave()
  if g:auto_save >= 1
    silent! wa
  endif
endfunction

function! AutoSaveToggle()
  if g:auto_save >= 1
    let g:auto_save = 0
    echo "AutoSave is OFF"
  else
    let g:auto_save = 1
    echo "AutoSave is ON"
  endif
endfunction

let &cpo = s:save_cpo
