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
" every global function and variable defined here can be referred to
" by Vim users or by other Vim scripts.
" So you should give plugin-specific names to them
" to avoid duplication of other names.
" The same goes for global definition in Python.
" So we use Python's import notation
" instead of using Vim's py3file command
" in order to reduce the number of global definitions (var, func, class).
"

" Import python/py3plug.py
python3 << endpython
import os
import sys
import vim
# <sfile>: Special variable whichi means current Vim script file.
sys.path.append(os.path.join(
    (os.path.dirname(vim.eval('expand("<sfile>")'))),
    'python'))
import py3plug
# Cleanup.
sys.path.pop()
endpython

function! py3plug#func0()
    python3 py3plug.func0()
endfunction

function! py3plug#func1(arg)
    python3 py3plug.func1(vim.eval('a:arg'))
endfunction

function! py3plug#funcX(...)
    python3 py3plug.funcX(vim.eval('a:000'))
endfunction
