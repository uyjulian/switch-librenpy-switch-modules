
set -e

export PYTHONLIBZIP=$(realpath renpy-switch-modules-renpy-common.zip)
export LIB_BUILD_DIR=./tmp_renpycommon
export LIB_BUILD_STAGING_DIR=./tmp_renpycommon_staging

rm -rf $LIB_BUILD_DIR $LIB_BUILD_STAGING_DIR $PYTHONLIBZIP
mkdir -p $LIB_BUILD_STAGING_DIR $LIB_BUILD_DIR/renpy
cp -asp $(realpath renpy-source) $LIB_BUILD_STAGING_DIR
pushd $LIB_BUILD_STAGING_DIR/renpy-source
python2 renpy.py --compile . compile
popd
cp -asp $(realpath $LIB_BUILD_STAGING_DIR/renpy-source/renpy/common) $LIB_BUILD_DIR/renpy
pushd $LIB_BUILD_DIR
7z a -l $PYTHONLIBZIP .
popd
