export GISTIT_TOKEN=""
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export TERM="xterm-color"
green="\033[0;32m"
red="\033[31;1m"
blue="\033[0;34m"
reset="\033[0;00m"
function lastcode {
	[[ $? = 0 ]] && echo -e $green || echo -e $red;
}
function set_bash_prompt {
	PS1="\n\[\$(lastcode)\]λ \[${blue}\]\w\[${neutral}\]$(__git_ps1) "
}
PROMPT_COMMAND=set_bash_prompt

alias ls='ls -G'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# git tab completion (homebrew)
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
	source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# Docker setup
eval "$(docker-machine env docker)"
