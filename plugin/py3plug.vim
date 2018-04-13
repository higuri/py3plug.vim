"
" py3plug.vim
"   Vim Plugin +python3 Template
"

" You can check whether your vim supports python3 in various ways:
" > $vim --version | grep 'python3'  @ shell
" > :python3 print(1)                @ vim cmdline
" > :echo has('python3')             @ vim cmdline
if !has('python3')
    echo 'ERROR: ' + expand('<sfile>') + ' requires +python3'
    finish
endif

" This flag is conventionally
" named like 'loaded_$(pluginname)'.
if exists('g:loaded_py3plug')
    finish
endif
let g:loaded_py3plug = 1

" Save vi-compatible option and reset it to its VIM default value.
" This prevents unintended behaviors on vi-compatible mode.
let s:save_cpo = &cpo
set cpo&vim

" Define commands which is called by users.
" The command name is conventionally
" named like $(PlugInName)Command or $(PIN)Command.
" In each command line, you must call function xxx#yyy(),
" where xxx(.vim) is the file name under autoload directory
" and yyy is the function name which is defined in the file.
command! -nargs=0 Py3PlugCmd0 call py3plug#func0()
command! -nargs=1 Py3PlugCmd1 call py3plug#func1(<f-args>)
command! -nargs=* P3PCmdX call py3plug#funcX(<f-args>)

" Restore the original value.
let &cpo = s:save_cpo
