
export HISTFILESIZE=
export HISTSIZE=50000
export LESSCHARSET=UTF-8
export AndroidSdkDirectory=/opt/android-sdk/
#export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

ec() {
    if [[ $# -lt 1 ]] ; then
        emacsclient -nc
    else
        emacsclient -nc "$@"
    fi
}

em() {
    if [[ "${DISPLAY}" != "" ]]; then
        if [[ $# -lt 1 ]] ; then
            emacsclient --display="${DISPLAY}" -n -e "(raise-frame)"
        else
            emacsclient --display="${DISPLAY}" -n "$@"
        fi
    else
        emacsclient -nw "$@"
    fi
}
alias en="emacsclient -nw"

fnd () {
    find . -name "$@"
}

grp () {
    grep --color=auto -Rn "$@" .
}

grpr () {
    grep --color=auto -rn "$@" .
}

grpa () {
    grep --color=always -Rn "$@" .
}

upd_tags() {
    find . -name "*.[chCH]" -print | etags -
}

rm_trl_ws () {
    find . \( -name '*.h' -o -name '*.c' -o -name '*cpp' -o -name '*.hpp' \) -print0 | xargs -i -r -0 sed -r -i 's/\s*$//' {}
}

function proc () {
    ps aux | grep "$@"
}

SHELL=$BASH
PS1='[\e[01;32m\u@\h: \e[01;34m\W\e[00m]$ '
PS1='[\u@\h: \W]$ '
PS2='-> '

#EDITOR="emacsclient -nw"
EDITOR=vim
export TERM=xterm-256color

export LD_LIBRARY_PATH
export LIBRARY_PATH
export C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH
export CPATH
export PKG_CONFIG_PATH

export PS1
export PS2
export PRINTER
export TERM
export EDITOR
export TERM

alias clr='tput clear'
alias hst=history
alias lf='ls -FC'
alias lr='ls -dl'
alias la='ls -a'
alias lla='ls -la'
alias NET="rm -f *~ .*~ \#*\# XtermLog.* core"
alias del='stty erase "^?"'
alias bs='stty erase "^h"'
alias ls='ls --color -hFC'
alias lel="echo loul"
alias parici="cd"
alias ll="ls --color -hFCl"
alias ..="cd .."
alias b="cd -"
alias fen="HOME=/home/tmijieux/old_emacs/ emacs -nw"
alias fem="HOME=/home/tmijieux/old_emacs/ emacs -mm"
alias sfs="sshfs plafrim:/home/tmijieux /home/tmijieux/plafrim/"
alias v="vim"
alias vi="vim"
alias compress="tar"
alias rm="rm -i"
alias grep="grep --color=auto"
alias val="valgrind --track-origins=yes"
alias val3="valgrind --track-origins=yes --leak-check=full --show-leak-kinds=definite"
alias val2="valgrind --track-origins=yes --leak-check=full --show-leak-kinds=all"
alias vallol="valgrind --vgdb=yes --vgdb-error=0"
alias maek="make"
alias mkae="make"
alias amke="make"
alias gti="git"
alias igt="git"
alias sl="ls"
alias k9="killall -9"
alias pbpw="curl -F c=@- https://ptpb.pw/"
alias emd="emacs --daemon"

#. /usr/Modules/3.2.10/init/bash
#export SPACK_ROOT=/home/tmijieux/spack # important
#source ${SPACK_ROOT}/share/spack/setup-env.sh
#export MODULEPATH=$SPACK_ROOT/share/spack/modules/linux-x86_64:$MODULEPATH

export GTAGSCONF=/usr/share/gtags/gtags.conf
export GTAGSLABEL=exuberant-ctags
export GTAGSFORCECPP="true"
#export CTAGS="--gtags"

source /usr/share/git/completion/git-completion.bash
source /home/tmijieux/.orbe_env

export ASAN_SYMBOLIZER_PATH=/usr/bin/llvm-symbolizer

export ANDROID_SDK_DIRECTORY=/opt/android-sdk
export ANDROID_SDK_PATH=/opt/android-sdk
export ANDROID_SDK_ROOT=/opt/android-sdk
export AndroidSdkDirectory=/opt/android-sdk
