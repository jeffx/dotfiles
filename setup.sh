#!/bin/bash
[[ -d ${HOME}/projects/dotfiles ]] || exit
cd ${HOME}
[[ -f ${HOME}/.bash_profile ]] || [[ -h ${HOME}/.bash_profile ]] && rm -f ${HOME}/.bash_profile
ln -s ${HOME}/projects/dotfiles/bash/bash_profile ${HOME}/.bash_profile
[[ -f ${HOME}/.bashrc ]] || [[ -h ${HOME}/.bashrc ]] && rm -f ${HOME}/.bashrc
ln -s ${HOME}/projects/dotfiles/bash/bashrc ${HOME}/.bashrc
[[ -f ${HOME}/.gitignore ]] || [[ -h ${HOME}/.gitignore ]] && rm -f ${HOME}/.gitignore
ln -s ${HOME}/projects/dotfiles/git/global-ignore ${HOME}/.gitignore
[[ -f ${HOME}/.gitconfig ]] || [[ -h ${HOME}/.gitconfig ]] && rm -f ${HOME}/.gitconfig
ln -s ${HOME}/projects/dotfiles/git/gitconfig ${HOME}/.gitconfig
[[ -f ${HOME}/.tmux.conf ]] || [[ -h ${HOME}/.tmux.conf ]] && rm -f ${HOME}/.tmux.conf
ln -s ${HOME}/projects/dotfiles/tmux/tmux.conf ${HOME}/.tmux.conf




