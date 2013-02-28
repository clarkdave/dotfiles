#!/bin/bash

dir=~/dotfiles
backup=$dir/.backups/`date +%s`

files="bashrc vimrc screenrc"

echo "creating backup folder $backup"
mkdir -p $backup

cd $dir

for file in $files; do
  mv ~/.$file $backup
  ln -s $dir/$file ~/.$file
done

echo "done"