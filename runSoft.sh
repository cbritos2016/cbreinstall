#!/bin/sh

sudo dnf install terminator
sudo dnf install remmina
sudo dnf install xinput

sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-text

sudo dnf install flameshot -y
sudo dnf install gedit -y
sudo dnf install dnf-plugins-core

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

sudo dnf group install Virtualization
sudo dnf group install "C Development Tools and Libraries" "Development Tools"
sudo dnf install cmake

curl -L https://nixos.org/nix/install | sh
