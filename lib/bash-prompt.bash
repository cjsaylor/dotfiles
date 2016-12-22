#! /usr/bin/env bash
#
# Bash prompt
###

export TERM="xterm-color"
green="\033[0;32m"
red="\033[31;1m"
blue="\033[0;34m"
reset="\033[0;00m"
function lastcode {
	[[ $? = 0 ]] && echo -e $green || echo -e $red;
}
function set_bash_prompt {
	PS1="\n\[\$(lastcode)\]λ \[${blue}\]\w\[${reset}\]$(__git_ps1) "
}
PROMPT_COMMAND=set_bash_prompt