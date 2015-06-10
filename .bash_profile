RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

export TERM="xterm-color"
PS1='\[\033[0;33m\]\u\[\033[0m\]@\[\033[0;32m\]\h\[\033[0m\]:\[\033[0;34m\]\w\[\033[0m\]$(__git_ps1)\$ '

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
