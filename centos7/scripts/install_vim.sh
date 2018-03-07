#!/bin/bash
install_vim()
{
  which vim && return
  sudo yum -y install vim
}

install_neovim()
{
  which nvim && return
  sudo yum -y install epel-release
  sudo curl -o /etc/yum.repos.d/dperson-neovim-epel-7.repo https://copr.fedorainfracloud.org/coprs/dperson/neovim/repo/epel-7/dperson-neovim-epel-7.repo 
  sudo yum -y install neovim
}

install_vim
install_neovim
