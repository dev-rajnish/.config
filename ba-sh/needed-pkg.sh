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
  breeze6-cursor \
  hyprcursor \
  grim

#=====
echo "| 3. | Installing getnf -- for installing nerd-fonts"
curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash
getnf

#=====
echo "| 4. | Moving to .config/"
cd ~/.config/
git config --global user.name "dev-rajnish"
git config --global user.email "dev.rajnish@proton.me"
git config --global credential.helper store

git init
git remote add origin "https://github.com/dev-rajnish/.config.git"

#======
## -- cleaning .config for fetch/pull
echo "| 5. |"

#======
echo "| 6. |"

git pull origin master

bash ~/.config/ba-sh/install.sh
