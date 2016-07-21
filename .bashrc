
# PERSONAL CONFIG

export HISTSIZE=50000
export PATH=.:$PATH
export PS1="\[\033[01;37m\]\$? \$(if [[ \$? == 0 ]]; then echo \
\"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\";\
 fi) $(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo \
'\[\033[01;32m\]\u@\h'; fi)\[\033[01;34m\] \w \$\[\033[00m\] "
export CDPATH=::$HOME/Desktop
export PASSWORD_STORE_DIR=~/ownCloud/.password-store
export G_MESSAGES_DEBUG=all
export GOPATH=$HOME/work
export HISTCONTROL=ignoredups:erasedups
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

git config --global user.name "Matthew Leeds"
#git config --global user.email "mwl458@gmail.com"
git config --global core.editor vim
git config --global color.ui auto
git config --global bz.default-tracker bugzilla.gnome.org
git config --global bz.default-product gnome-builder
git config --global bz.default-component general
git config --global url.ssh://mwleeds@git.gnome.org/git/.insteadof gnome:

mesg n

shopt -s dotglob
shopt -s checkwinsize
shopt -s histappend

alias ..='cd ..'
alias myip='wget -q -O - checkip.dyndns.org | sed -e "s/.*Current IP Address: //" -e "s/<.*$//"'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias proto='ctags -x --c-kinds=fp'

eval `ssh-agent -s` > /dev/null
