#!/bin/bash

ENV=$1

echo $ENV

if [ $ENV = "dgx2" ]; then
	# tmux
	apt-get update
	apt-get install tmux
	cp bash_aliases/.bash_aliases_applica ~/.bash_aliases
	cp git/gitconfig ~/.gitconfig
	cp /data/jchledowski/.ssh ~/.ssh -r
elif [ $ENV = "dgx" ]; then
	cp bash_aliases/.bash_aliases_applica ~/.bash_aliases
	cp git/gitconfig ~/.gitconfig
	cp /data/jchledowski/.ssh ~/.ssh -r
elif [ $ENV = "nyu_skynet" ]; then

fi	
