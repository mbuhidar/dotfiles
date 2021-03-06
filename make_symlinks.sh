#!/bin/bash
############################
# .make_symlinks.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_bak             # old dotfiles backup directory
files=".bashrc .bash_aliases .vimrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_bak in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_bak directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/$file ~/dotfiles_bak/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done
