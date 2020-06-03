#!/bin/sh

set -e

apt-get update -yqq
apt-get upgrade -yqq
apt-get install -yqq curl git

curl -fsSL https://get.docker.com | sh
apt-get install -yqq docker-compose

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

MY_VIM_CONFIG = "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab"

echo "${MY_VIM_CONFIG}" >> ~/.vim_runtime/my_configs.vim