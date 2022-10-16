#!/bin/bash

# not working: use -> under final KEY set !!!
sudo apt-get update
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 536F8F1DE80F6A35
sudo apt-get update
sudo apt remove --purge ubuntu-dbgsym-keyring
sudo apt-key del 0x172B5989FCD21EF8
sudo apt install ubuntu-dbgsym-keyring
sudo apt install --reinstall ubuntu-dbgsym-keyring

#sudo localectl set-locale LANG=en_US.UTF-8

sudo apt install nano -y >/dev/null

#sudo nano /etc/locale.gen
##sudo localectl set LC_ALL="en_US.UTF-8"
##LANG=C perl -e exit
##env LANG=C perl -e exit
##LC_MESSAGES="en_US.UTF-8"
##LANGUAGE="en_US.UTF-8"
##LC_ALL="en_US.UTF-8"
##LC_CTYPE="en_US.UTF-8"
#LANG="C"
##LANG=C perl -e exit

# not working: use -> error messages all matching KEY delete !!!
sudo apt update
sudo apt remove --purge ubuntu-dbgsym-keyring
sudo apt-key del 0xC8CAB6595FDFF622
sudo apt-key del 0x172B5989FCD21EF8
sudo apt install ubuntu-dbgsym-keyring
sudo locale-gen
sudo apt install --reinstall ubuntu-dbgsym-keyring
sudo locale-gen

sudo apt-get update
sudo apt-key del  0x172B5989FCD21EF8
wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo apt-key add -
uname -a
sudo apt update
sudo apt-get update
sudo locale-gen

echo -e '\nlanguage check:'
cat /etc/locale.gen | grep -v "#"

##export LC_CTYPE="en_US.UTF-8"
##export LC_ALL="en_US.UTF-8"

localefix01 () {
### IF JUST NOT WORKING THIS IS "UBUNTU METHOD" ###
sudo locale-gen en_US.UTF-8
sudo localedef -i en_US -f UTF-8 en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales
#exit
}
#localefix01

localefic02 () {
### UBUNTU METHOD ###
sudo locale-gen en_US.UTF-8
LANG=en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8
LANG=en_US.UTF-8
LC_MESSAGES=POSIX
sudo locale -a
sudo update-locale LANG=en_US.UTF-8
#exit
}
localefix02

### debconf fail PROBLEM FIX ###
echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
sudo apt-get install -y -q
sudo chmod 777 /var/cache/debconf/
sudo chmod 777 /var/cache/debconf/passwords.dat

echo -e "\nclose terminal and again new open terminal, without system restart !!!\n"
