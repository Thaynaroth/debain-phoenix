#!/bin/bash

# update apt
sudo apt update && upgrade -y

# install dependencies need for building erlang
sudo apt -y install build-essential autoconf m4 libncurses-dev \
libwxgtk3.2-dev libwxgtk-webview3.2-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev \
xsltproc fop libxml2-utils openjdk-17-jdk unzip

# build erlang from source version 27
git clone https://github.com/erlang/otp.git ~/otp-source
cd ~/otp-source
git checkout maint-27
./configure
sudo make
sudo make install

# install elixir 1.18.1
wget https://github.com/elixir-lang/elixir/releases/download/v1.18.1/elixir-otp-27.zip
unzip elixir-otp-27.zip -d $HOME/.elixir
rm elixir-otp-27.zip
echo 'export PATH="$PATH:$HOME/.elixir/bin"' >> ~/.bashrc
source ~/.bashrc

# install phoenix
mix local.hex --force
mix local.rebar --force
mix archive.install hex phx_new --force

#remove source directory
sudo rm -rf otp-source
