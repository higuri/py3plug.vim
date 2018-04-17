# py3plug.py

# Python code gets all of its access to vim via the 'vim' module.
# See ':help python-vim' for details.
#import vim

class Py3Plug(object):

    def func0(self):
        print('py3plug_func0')

    def func1(self, arg):
        print('py3plug_func1(%r)' % arg)

    def funcX(self, args):
        print('py3plug_funcX(%r)' % args)

if __name__ == '__main__':
    py3plug = Py3Plug()
    py3plug.func0()
    py3plug.func1('foo')
    py3plug.funcX(['foo', 'bar'])
