#!/bin/bash
date_stamp=$(date +%j-%H%M)
source_dir=$(dirname $0)
source_dir=$(realpath ${source_dir})
dot_file_list="bash/bashrc
git/gitconfig
git/global-ignore
screen/screenrc
tmux/tmux.conf
vim/vimrc"

backup_dir="${HOME}/.dotbackups"

for file in ${dot_file_list} ; do
    bn=$(basename ${file})
    df="${HOME}/.${bn}"
    sf="${source_dir}/${file}"
    echo "bf=${df}"
    if [ -h ${df} ] ; then
        rm -f ${df}
    elif [ -f ${df} ] ; then
        [ -d ${backup_dir} ] || mkdir ${backup_dir}
        mv ${df} ${backup_dir}/${bn}.${date_stamp}
    fi
    [ -f ${sf} ] || echo "${sf} doesn't exist"
    ln -s ${sf} ${df}
done

