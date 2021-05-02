
set -e

export PYTHONLIBZIP=$(realpath renpy-switch-modules-pylibs.zip)
export LIB_BUILD_DIR=./tmp_lib


rm -rf $LIB_BUILD_DIR $PYTHONLIBZIP
mkdir -p $LIB_BUILD_DIR
cp -as $(realpath pygame_sdl2-source/src/pygame_sdl2) $LIB_BUILD_DIR
cp -as $(realpath renpy-source/renpy) $LIB_BUILD_DIR
pushd $LIB_BUILD_DIR
find . -type l -not -name \*.py -delete
find . -type d -empty -delete
find . -name \*.py -exec python2 -OO -m py_compile {} \;
7z a -l $PYTHONLIBZIP .
popd
