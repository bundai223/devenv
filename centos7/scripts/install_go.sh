
#!/bin/bash
VERSION=1.9.2
OS=linux
ARCH=amd64
WORKDIR=work_go

install_go()
{
  which go 2>/dev/null 1>$2 && return

  cur=$(pwd)
  mkdir -p ${WORKDIR}
  cd ${WORKDIR}

  tgz=go${VERSION}.${OS}-${ARCH}.tar.gz
  wget https://redirector.gvt1.com/edgedl/go/${tgz}
  sudo tar -C /usr/local -xzf ${tgz}

  cd ${cur}
  rm -rf ${WORKDIR}

  echo '* Please set path'
  echo 'export PATH=$PATH:/usr/local/go/bin'
}

install_go

