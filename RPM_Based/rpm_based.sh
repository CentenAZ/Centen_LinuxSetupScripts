#!/bin/bash
###################################################
# RPM BASED DISTROS
###################################################


# Update Software
echo -e "\n\n**Updating All Software**"
sudo dnf update -y
sudo yum update -y
echo -e "\n**Installing Extra Packages for Enterprise Linux**"
sudo dnf install epel-release -y

# Install Brave Browser
echo -e "\n**Installing The Brave Browser**"
sudo dnf install dnf-plugins-core -y
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

# Install OpenSSH Host
echo -e "\n**Installing OpenSSH Server**"
sudo dnf install openssh-server -y

# Install VIM
echo -e "\n**Installing VIM**"
sudo dnf install vim -y

# OPTIONAL APPLICATIONS
echo -e "\n**Installing Make**"
sudo dnf install make -y

echo -e "\n**Installing Neofetch and Bashtop**"
cd /tmp
sudo git clone https://github.com/dylanaraps/neofetch.git
sudo git clone https://github.com/aristocratos/bashtop.git
cd neofetch
sudo make install
cd /tmp
cd bashtop
sudo make install

echo -e "\n**Installing Flatpak**"
sudo dnf install flatpak -y
echo "INSTALL THE FLATPAK RESPOSITORY AT https://flatpak.org/setup/"