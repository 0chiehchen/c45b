#!/bin/bash

sudo apt-get update

# tools
sudo apt-get install -y vim
sudo apt-get install -y screen
sudo apt-get install -y aptitude

sudo apt-get install -y curl
sudo apt-get install -y git-core

sudo apt-get -y --force-yes install srecord
sudo apt-get -y --force-yes install avrdude avrdude-doc
sudo apt-get -y --force-yes install minicom picocom setserial

# SERIAL TERMINAL
sudo apt-get -y --force-yes install gtkterm moserial

# Devel
sudo apt-get -y --force-yes install build-essential
sudo apt-get -y --force-yes install qt4-qmake
sudo apt-get -y --force-yes install qt4-default
sudo apt-get -y --force-yes install libqt4-core
sudo apt-get -y --force-yes install libqt4-dev
#sudo apt-get -y --force-yes install qt4-default:i386 qt4-qmake:i386 libqt4-core:i386 libqt4-dev:i386
sudo apt-get -y --force-yes install checkinstall

# Install c45b and the required libqtcore4
sudo apt-get -y --force-yes install libqtcore4
#sudo dpkg -i /vagrant/tools/c45b/c45b_20131114-1_i386.deb

# Add users to the dialout group
sudo usermod -a -G dialout vagrant
groups vagrant
id vagrant

# .bash_profile
echo .bash_profile
cp -a /vagrant/.bash_profile ~vagrant/
cp -a /vagrant/.minirc.dfl ~vagrant/

echo "
bootstrap.sh done...
"

