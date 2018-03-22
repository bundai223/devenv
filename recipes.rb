#!/usr/bin/env ruby
# coding: utf-8
include_recipe 'cookbooks/neovim/default.rb'
include_recipe 'cookbooks/tmux/default.rb'
include_recipe 'cookbooks/zsh/default.rb'
include_recipe 'cookbooks/git/default.rb'
include_recipe 'cookbooks/rust/default.rb'
include_recipe 'cookbooks/go/default.rb'
