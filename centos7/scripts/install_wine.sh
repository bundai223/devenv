#!/bin/bash
#sudo yum install samba-winbind-clients -y
#sudo yum groupinstall 'Development Tools' -y
#sudo yum install libjpeg-turbo-devel libtiff-devel freetype-devel glibc-devel.{i686,x86_64} libgcc.{i686,x86_64} libX11-devel.{i686,x86_64} freetype-devel.{i686,x86_64} gnutls-devel.{i686,x86_64} libxml2-devel.{i686,x86_64} libjpeg-turbo-devel.{i686,x86_64} libpng-devel.{i686,x86_64} libXrender-devel.{i686,x86_64} alsa-lib-devel.{i686,x86_64} -y

WORKDIR=work_wine32
CUR=$(pwd)

mkdir ${WORKDIR}
cd ${WORKDIR}

wget http://dl.winehq.org/wine/source/2.x/wine-2.11.tar.xz
tar Jxf wine-2.11.tar.xz
cd wine-2.11/

mkdir -p wine32 wine64

# 64bit
cd wine64
../configure --enable-win64
make -j 2

# 32bit
cd ../wine32
../configure --with-wine64=../wine64
make -j 2

sudo make install

cd ../wine64
sudo make install

cd ${CUR}
