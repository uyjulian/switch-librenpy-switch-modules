
docker run -d --name switchdev --workdir /build/git -v "${PWD}:/build/git" devkitpro/devkita64:20210306 tail -f /dev/null
docker exec switchdev /bin/bash -c 'dkp-pacman -Sy --noconfirm devkitpro-pkgbuild-helpers'
docker exec switchdev /bin/bash -c 'apt-get -y update'
docker exec switchdev /bin/bash -c 'apt-get -y install python python-pip libc6-dev'
docker exec switchdev /bin/bash -c 'python2 -m pip install cython==0.29.21'
curl -LOC - https://github.com/uyjulian/switch-libpython2/releases/download/v2.7.18-switch1/python27-switch.tar.gz
docker exec switchdev /bin/bash -c 'tar -xf python27-switch.tar.gz -C $DEVKITPRO/portlibs/switch'
pip install cython==0.29.21
