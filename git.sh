#!/bin/bash
# this version of code u can apply from any user who have sudo access
echo "Check if you have latst Git version"
git --version
echo " if u have latest version type yes"
read dec
case $dec in
	yes) echo "bye"
		;;
	no) echo "enter which git version doyou want to install
		"
		read git_ver
		cd /opt
		sudo wget https://github.com/git/git/archive/refs/tags/v${git_ver}.zip
		cd /opt
		sudo unzip v${git_ver}.zip
		rm -rf v${git_ver}.zip
		cd /opt/git-${git_ver}
		sudo make configure
		cd /opt/git-${git_ver}
		sudo ./configure --prefix=/usr/locl
		cd /opt/git-${git_ver}
		sudo make install
		git --version
		echo "enter global username"
		read username
		git config --global user.name "$username"
		echo "enter global email adress"
		git config --list
		;;
esac

