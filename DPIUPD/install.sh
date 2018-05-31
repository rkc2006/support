#!/bin/sh
wget https://raw.githubusercontent.com/rkc2006/support/master/DPIUPD/pkg2.7z
wget https://raw.githubusercontent.com/rkc2006/support/master/DPIUPD/pkg3.7z
wget https://raw.githubusercontent.com/rkc2006/support/master/DPIUPD/usshare.7z
wget https://raw.githubusercontent.com/rkc2006/support/master/DPIUPD/usbin.7z
wget https://raw.githubusercontent.com/rkc2006/support/master/DPIUPD/uslib.7z
wget https://raw.githubusercontent.com/rkc2006/support/master/DPIUPD/update1.tar
sudo /boot/dietpi/dietpi-services stop
sudo 7z e pkg2.7z
sudo 7z e pkg3.7z
sudo 7z e usshare.7z
sudo 7z e usbin.7z
sudo 7z e uslib.7z
sleep 10
sudo rm -rf /boot/dietpi
sudo rm -rf /DietPi/dietpi
sudo tar -xvf update1.tar -C /boot/
sudo tar -xvf update1.tar -C /DietPi/
sudo tar -xvf pkg2.tar -C /
sudo tar -xvf pkg3.tar -C /
sudo tar -xvf share.tar -C /usr/
sudo tar -xvf usbin.tar -C /usr/
sudo tar -xvf uslib.tar -C /usr/
sleep 10
exit 0
