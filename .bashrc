#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR=vim
alias diff='colordiff'
alias hiru='sudo relight restore hiru'
alias yoru='sudo relight restore yoru'
alias fontstyle="sudo infctl setstyle"
alias weechat="tmux new -s weechat 'weechat'"
alias rm='rm -v -I'
alias alsamixer="alsamixer -c 0"
alias mpd="mpd; mpdscribble; ncmpcpp"
