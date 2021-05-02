
export RENPY_VER=7.3.5
export PYGAME_SDL2_VER=2.1.0
export PYGAME_SDL2_VER_FOR_RENPY=7.4.0

curl -LOC - https://www.renpy.org/dl/7.4.0/pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$PYGAME_SDL2_VER_FOR_RENPY.tar.gz
curl -LOC - https://www.renpy.org/dl/7.3.5/renpy-$RENPY_VER-source.tar.bz2
rm -rf renpy-$RENPY_VER-source renpy-source
tar -xf renpy-$RENPY_VER-source.tar.bz2
mv renpy-$RENPY_VER-source renpy-source
rm -rf pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$PYGAME_SDL2_VER_FOR_RENPY pygame_sdl2-source
tar -xf pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$PYGAME_SDL2_VER_FOR_RENPY.tar.gz
mv pygame_sdl2-$PYGAME_SDL2_VER-for-renpy-$PYGAME_SDL2_VER_FOR_RENPY pygame_sdl2-source
pushd renpy-source
patch -p1 < ../renpy.patch
pushd module
rm -rf gen gen-static
popd
popd
pushd pygame_sdl2-source
# No patch required for pygame_sdl2.
rm -rf gen gen-static
popd
