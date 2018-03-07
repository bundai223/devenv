#!/bin/bash

install_rust()
{
  which rustup 2>/dev/null 1>$2 && echo hoge
  curl https://sh.rustup.rs -sSf | sh
}

install_rust
