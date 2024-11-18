#!/bin/bash

sudo zypper ref
sudo zypper rm PackageKit
sudo zypper in --no-recommends --details -y \
curl \
wget \
fish \
neovim \
git \
git-core \
gh \
hyprland \
hyprland-devel \
kitty \
mako \
sway \
waybar \
wofi \
brightnessctl \
xplr \
glow \
bat \
eza \
zoxide \
libnotify-tools \
wlr-randr \
gcc \
wl-clipboard \


echo "Installing getnf -- for installing nerd-fonts"
curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash
getnf

echo "Moving to .config/"
cd ~/.config/
git init
git remote add origin "https://github.com/dev-rajnish/.config.git"

## -- cleaning .config for fetch/pull
echo "mkdir -p ~/.config/before-needed-pkg.sh"
mkdir -p "~/.config/before-needed-pkg.sh"
cp -rv mako/ walls/ -t before-needed-pkg.sh/





