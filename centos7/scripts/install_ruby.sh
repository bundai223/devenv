#!/bin/bash

install_rbenv()
{
  which rbenv 2>/dev/null 1>$2 && return
}

install_ruby()
{
  which ruby 2>/dev/null 1>$2 && return
}

install_rbenv
install_ruby
