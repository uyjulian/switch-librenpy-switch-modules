
set -e

pushd pygame_sdl2-source
rm -rf gen gen-static
python2 setup.py || true
PYGAME_SDL2_STATIC=1 python2 setup.py || true
popd

pushd renpy-source/module
rm -rf gen gen-static
RENPY_DEPS_INSTALL=/usr/lib/x86_64-linux-gnu:/usr:/usr/local python2 setup.py || true
RENPY_DEPS_INSTALL=/usr/lib/x86_64-linux-gnu:/usr:/usr/local RENPY_STATIC=1 python2 setup.py || true
popd
