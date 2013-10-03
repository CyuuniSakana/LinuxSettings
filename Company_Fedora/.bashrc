# .bashrc
export LC_ALL="zh_TW.UTF-8"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias get_pkg="sftp linpus@192.168.0.225"
alias pkg_s="ssh linpus@192.168.0.225 -X"
alias l="ls"
alias python='/bin/python3'
alias tmux="TERM=xterm-256color tmux"
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
gsettings set org.gnome.shell.clock show-date true
export PAGER=most
export PS1="[\[\e[1;36m\]\u\[\e[0m\]][\[\e[1;32m\]\D{%m/%d-%T}\[\e[0m\]][\W]~> "
export HISTSIZE=9999
export HISTFILESIZE=999999
export PATH="/usr/lib64/qt-3.3/bin:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/home/taizai/.local/bin:/home/taizai/bin:/home/taizai/android-ndk-r8e:/home/taizai/android-sdks/platform-tools:/home/taizai/android-sdks/tools"
function _sort() {
	export LC_ALL="C"
	sort $*
	export LC_ALL="zh_TW.UTF-8"
}
alias sort="_sort"
function _uniq() {
	export LC_ALL="C"
	uniq $*
	export LC_ALL="zh_TW.UTF-8"
}
alias uniq="_uniq"

bind -m vi-insert 'Control-l: clear-screen'

#the delimiter of for loop in shell is space and newline, set newline only
export IFS=$'\n'
