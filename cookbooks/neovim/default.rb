
case node[:platform]
when 'debian', 'ubuntu', 'mint'
  package 'neovim'
  package 'python3-neovim'

when 'fedora', 'redhat', 'amazon'
when 'osx', 'darwin'
when 'arch'
when 'opensuse'
else
end
