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


# Put your fun stuff here.
export PS1="\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \\w \$(git branch 2>/dev/null | grep ^* | colrm 1 2 | sed 's/^/[\\[\\033[01;33m\\]/g;s/$/\\[\\033[01;34m\\]]/')\$\[\033[00m\] "

#export PS1="\\w:\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$ "

alias emacs='emacs -nw'

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
