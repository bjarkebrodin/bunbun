#!/usr/bin/env bash

#
# author: bjarke@brodin.dk
# version: 11-10-2021
#
#
# Useful Ressources
#
# https://github.com/swaywm/sway/wiki#why-is-my-keyboard-layout-wrong
# https://github.com/rbnis/dotfiles
#
#
# Potentially useful packages
# https://github.com/yory8/clipman
#

# Add PPAs


# Update system
sudo apt-get update \
&& sudo apt-get upgrade

# Install packages
sudo apt-get install \
	zsh \
	git \
  feh \
	curl \
	wget \
	unzip \
	zip \
	sway \
	vim \
	gnome-tweak-tool \
	gcc \
	gdb \
	python3 \
	make \
	cmake \
	texlive \
	npm \
	tldr \
	tmux \
	grim \
	slurp \
	golang \
	wl-clipboard \
	swaylock \
	tree \
	mpd \
	#todo: jdk
	#todo: dart+flutter
	#todo: nodejs

sudo snap install \
	spotify \


# Install github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

tldr --update

#todo: vscode


# Get clipman clipboard manager
go get github.com/yory8/clipman


# Get fancy swaylock setup
sudo apt install \
	meson \
	wayland-protocols \
	libcairo2-dev \
	libgdk-pixbuf-2.0-dev \
	libwayland-dev \
	libxkbcommon-dev \
&& git clone https://github.com/mortie/swaylock-effects \
&& cd swaylock-effects \
&& meson build \
&& ninja -C build \
&& sudo ninja -C build install \
&& sudo chmod a+s /usr/local/bin/swaylock \
&& rm -rf swaylock-effects


# Setup fonts

font_loc="$HOME/.local/share/fonts"
if [[ ! -d font_loc ]]; then mkdir font_loc; fi

iosevka_url="https://github.com/be5invis/Iosevka/releases/download/v10.3.2/super-ttc-iosevka-10.3.2.zip"
curl -L iosevka_url > iosevka.zip \
&& unzip iosevka.zip \
&& mv iosevka.ttc ~/.local/share/fonts/


# Setup gtk themes

theme_loc="$HOME/.local/share/themes"
if [[ ! -d theme_loc ]]; then mkdir theme_loc; fi

nordic_url="https://github.com/EliverLara/Nordic/releases/download/2.0.0/Nordic-darker.tar.xz"
curl -L $nordic_url > nordic.tar.xvf \
&& tar -xvf nordic.tar.xvf \
&& mv Nordic-darke $theme_loc


# todo: set theme automatically

# Shell configuration goodies
git clone https://github.com/kutsan/zsh-system-clipboard ~/.zsh/plugins/zsh-system-clipboard


# There is a Nord theme for firefox here
# https://addons.mozilla.org/da/firefox/addon/firefox-nord-dark/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search
# todo: make a better one, tabs are a mess
# todo: edit usercss so the top bar is smaller



