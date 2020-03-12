#!/bin/bash
########################
# .dotfiles init script
########################

basedir=`dirname $0`
linked='vimrc vim zshrc screenrc'

echo -n 'Creating the symlinks...'
for file in $linked; do
	[ -L $HOME/.$file ] && unlink $HOME/.$file 
	ln -s $HOME/.dotfiles/$file $HOME/.$file 
done
echo 'done'

# get few packages
echo -n 'Installing plugins...'
cd $basedir
git submodule update --init --remote --merge
vim +PlugInstall +qall
echo 'done'
