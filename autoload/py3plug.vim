"
" autoload/py3plug.vim
"

"
" This file will be (auto)loaded when
" one of the functions defined here is called first time.
" In order to make a function callable from other scripts,
" you should name the function acoording to the following rule:
" : $(nmae_of_this_file)#function_name
"
" Once this file is loaded,
" every global function and variable defined here is referable
" by Vim users or by other Vim scripts.
" So you should give plugin-specific names to them
" to avoid duplication of other names.
" The same goes for global definition in Python scripts.
"

" Run ./py3plug.py to load python functions.
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
