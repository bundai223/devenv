#!/bin/bash
VERSION=1_65_1
WORKDIR=work_boost
DIR=boost_${VERSION}
TGZ=boost_${VERSION}.tar.gz
URL=https://dl.bintray.com/boostorg/release/$(echo $VERSION|sed 's/_/./g')/source/${TGZ}

install_boost()
{
  # which boost 2>/dev/null 1>$2 && return

  cur=$(pwd)
  test -e ${WORKDIR} || mkdir -p ${WORKDIR}
  cd ${WORKDIR}

  if [ ! -e ${TGZ} -o ! -e ${DIR} ]; then
    wget ${URL}
    tar fvx ${TGZ}
  fi
  cd ${DIR}

  ./bootstrap.sh
  

  cd ${cur}
  # rm -rf ${WORKDIR}
}

install_boost
