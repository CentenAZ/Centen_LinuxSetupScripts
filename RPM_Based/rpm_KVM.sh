#!/bin/bash
###################################################
# RPM BASED DISTROS
###################################################


sudo yum update
sudo dnf update
cat /proc/cpuinfo | egrep "vmx|svm"
lsmod | grep kvm
lscpu | grep Virtualization

sudo dnf install cockpit cockpit-machines -y
systemctl stop cockpit.socket
sudo firewall-cmd --add-service=cockpit --permanent

sudo dnf install qemu-kvm qemu-img libvirt virt-install libvirt-client virt-manager -y
sudo yum install qemu-kvm libvirt libguestfs-tools virt-install -y
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
