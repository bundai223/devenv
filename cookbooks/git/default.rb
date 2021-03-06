
case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'git'

when 'fedora', 'redhat', 'amazon'
  # #!/bin/bash
  # VERSION=2.15.0
  # WORKDIR=work_git

  # install_git()
  # {
  #   which git 2>/dev/null 1>$2 && return

  #   sudo yum -y install wget curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker autoconf

  #   cur=$(pwd)
  #   mkdir -p ${WORKDIR}
  #   cd ${WORKDIR}

  #   wget https://www.kernel.org/pub/software/scm/git/git-${VERSION}.tar.gz
  #   tar fx git-${VERSION}.tar.gz
  #   cd git-${VERSION}
  #   make configure
  #   ./configure --prefix=/usr
  #   make all
  #   sudo make install

  #   cd ${cur}
  #   rm -rf ${WORKDIR}
  # }

  # install_git
  package 'git'

when 'osx', 'darwin'
when 'arch'
when 'opensuse'
else
end
