#!/bin/bash -e

ln -s /data/user/git/gitconfig $HOME/.gitconfig
mkdir -p $HOME/.ssh
ln -s /data/user/.ssh/id_rsa $HOME/.ssh/id_rsa
ln -s /data/user/.ssh/id_rsa.pub $HOME/.ssh/id_rsa.pub
