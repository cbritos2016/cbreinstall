#!/bin/sh

sudo dnf install terminator -y
sudo dnf install remmina -y
sudo dnf install xinput -y

sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-text -y

sudo dnf install flameshot -y
sudo dnf install gedit -y
sudo dnf install dnf-plugins-core -y 

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

sudo dnf group install Virtualization -y
sudo dnf group install "C Development Tools and Libraries" "Development Tools" -y
sudo dnf install cmake -y
sudo dnf install drawing -y

sudo su
echo '3.134.185.143 openvpnserver' >> /etc/hosts
echo '65.21.238.137 hetzner' >> /etc/hosts

sudo usermod -a -G qemu crisb
sudo usermod -a -G kvm crisb
sudo usermod -a -G libvirt crisb

curl -L https://nixos.org/nix/install | sh
