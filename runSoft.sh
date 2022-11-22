#!/bin/sh

sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc

sudo dnf install terminator remmina xinput flameshot gedit dnf-plugins-core cmake drawing gh sublime-text brave-browser -y

sudo dnf group install Virtualization -y
sudo dnf group install "C Development Tools and Libraries" "Development Tools" -y

sudo su
echo '3.134.185.143 openvpnserver' >> /etc/hosts
echo '65.21.238.137 hetzner' >> /etc/hosts

sudo usermod -a -G qemu crisb
sudo usermod -a -G kvm crisb
sudo usermod -a -G libvirt crisb

curl -L https://nixos.org/nix/install | sh
echo "END"
