
docker run -d --name switchdev --workdir /build/git -v "${PWD}:/build/git" devkitpro/devkita64:20210306 tail -f /dev/null
curl -LOC - https://github.com/uyjulian/pacman-packages/releases/download/v2.2.3-1-pkgbuild-helpers/devkitpro-pkgbuild-helpers-2.2.3-1-any.pkg.tar.xz
docker exec switchdev /bin/bash -c 'dkp-pacman -U --noconfirm devkitpro-pkgbuild-helpers-2.2.3-1-any.pkg.tar.xz'
docker exec switchdev /bin/bash -c 'apt-get -y update'
docker exec switchdev /bin/bash -c 'apt-get -y install python python-pip libc6-dev'
docker exec switchdev /bin/bash -c 'python2 -m pip install cython==0.29.21'
curl -LOC - https://github.com/uyjulian/switch-libpython2/releases/download/v2.7.18-switch1/python27-switch.tar.gz
docker exec switchdev /bin/bash -c 'tar -xf python27-switch.tar.gz -C $DEVKITPRO/portlibs/switch'
pip install cython==0.29.21
