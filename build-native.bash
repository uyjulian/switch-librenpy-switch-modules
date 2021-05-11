
set -e

pushd pygame_sdl2-source
python2 setup.py build
python2 setup.py install_headers
python2 setup.py install
popd

pushd renpy-source/module
RENPY_DEPS_INSTALL=/usr/lib/x86_64-linux-gnu:/usr:/usr/local python2 setup.py build
RENPY_DEPS_INSTALL=/usr/lib/x86_64-linux-gnu:/usr:/usr/local python2 setup.py install
popd
