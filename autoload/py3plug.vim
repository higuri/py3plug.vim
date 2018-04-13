"
" autoload/py3plug.vim
"

" Run ./python/py3plug.py to load python functions.
let s:curdir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:pyfile = s:curdir . '/py3plug.py'

execute 'py3file ' . s:pyfile

function! py3plug#func0()
    python3 py3plug_func0()
endfunction

function! py3plug#func1(arg)
    python3 import vim
    python3 py3plug_func1(vim.eval('a:arg'))
endfunction

function! py3plug#funcX(...)
    python3 import vim
    python3 py3plug_funcX(vim.eval('a:000'))
endfunction
