#!/bin/bash
function digitaldatetime() {
    echo `date +"%Y%m%d%H%M%S"`
}
GoVim=`pwd -P`
cd $HOME

echo -e "Start to install vim-conf\n"
echo -e "Looking for an existing vim config...\n"
if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]; then
    echo -e "Found ~/.vimrc. Backing up to ~/.vimrc.`digitaldatetime`\n";
    mv ~/.vimrc ~/.vimrc.`digitaldatetime`;
fi

if [ -d ~/.vim ]; then
    echo -e "Found ~/.vim. Backing up to ~/.vim.`digitaldatetime`\n";
    mv ~/.vim ~/.vim.`digitaldatetime`;
fi

echo -e "Copying .vimrc and .vim\n"
echo -e "ln -s ${GoVim}/.vimrc .vimrc\n"
ln -s ${GoVim}/.vimrc .vimrc
echo -e "ln -s ${GoVim}/.vim .vim\n"
ln -s ${GoVim}/.vim .vim
echo -e "Enjoy!\n"
