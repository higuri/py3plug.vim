py3plug.vim
========

Vim Plugin +python3 Template

Instalation
-----------

### Prerequisite

* Vim compiled with Python 3+ support

You can check by

    $ vim --version | grep +python3


### Traditional Way

    $ git clone https://github.com/higuri/py3plug.vim
    $ cp -r py3plug.vim/plugin ~/.vim/.
    $ cp -r py3plug.vim/autoload ~/.vim/.

### Vundle

If you have Vundle installed, add the following line to your .vimrc

    Plugin 'higuri/py3plug.vim'

and then run

    :PluginInstall


Run Example Commands
--------------------

    :Py3PlugCmd0
    :Py3PlugCmd1 foo
    :Py3PlugCmd1 foo bar
    :P3PCmdX
    :P3PCmdX boo bar

