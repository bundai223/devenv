#!/bin/bash

install_node()
{
  sudo yum install -y epel-release
  sudo yum install -y nodejs npm
}

install_node
