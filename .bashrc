# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# ALIASES

alias ..='cd ..'
alias ...='cd ../..'

alias tree3='tree -d -L 3'
alias tree4='tree -d -L 4'

alias mnt='sudo mount /dev/sdb1 /mnt/tmp'
alias umnt='sudo umount /mnt/tmp'

alias fuck='sudo $(history -p \!\!)'

alias calendar='vim -c :Calendar -c :colo\ desert'
alias calclock='vim -c :Calendar\ -view=clock -c :colo\ desert'

alias sched='column -s, -t < ~/documents/notes/schedule.csv'
# Set vi editing mode
set -o vi
