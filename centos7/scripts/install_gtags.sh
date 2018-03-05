#!/bin/bash
VERSION=6.6.2
WORKDIR=work_gtags

install_gtags()
{
  # check duplication
  which gtags 2>/dev/null 1>$2 && return

  cur=$(pwd)
  mkdir -p ${WORKDIR}
  cd ${WORKDIR}

  wget http://tamacom.com/global/global-${VERSION}.tar.gz
  tar fx global-${VERSION}.tar.gz
  cd global-${VERSION}
  make configure
  ./configure --prefix=/usr
  make all
  sudo make install

  # clean up
  cd ${cur}
  rm -rf ${WORKDIR}
}

install_gtags
