#!/bin/bash
create_user()
{
  name=$1
  password=$2
  ssh_pub=$3

  useradd -p $(perl -e "print(crypt('${password}', 'ab'))") -G wheel ${name}
  mkdir -p /home/${name}/.ssh
  echo ${ssh_pub} >> /home/${name}/.ssh/authorized_keys
  chown -R ${name}:${name} /home/${name}/.ssh
  chmod 600 /home/${name}/.ssh
}

create_user $1 $2 $3
