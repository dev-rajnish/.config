#!/bin/bash

sudo zypper ref
sudo zypper in --no-recommends --details -y \
 curl \
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



