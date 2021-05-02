
set -e
source $DEVKITPRO/switchvars.sh

pushd pygame_sdl2-source
PYGAME_SDL2_STATIC=1 python2 setup.py generate
popd

pushd renpy-source/module
RENPY_DEPS_INSTALL=$PORTLIBS_PREFIX RENPY_STATIC=1 python2 setup.py generate || true
popd
