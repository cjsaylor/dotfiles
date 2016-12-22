export NVM_DIR="/Users/christophersaylor/.nvm"
export GISTIT_TOKEN=""

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Prompt
if [ -f ~/lib/bash-prompt.bash ]; then
	source ~/lib/bash-prompt.bash
fi

# custom functions
if [ -f ~/lib/utilities.bash ]; then
	source ~/lib/utilities.bash
fi

# aliases
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
fi

# git tab completion (homebrew)
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
	. `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
	source `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

# New zumba dev
export ZUMBA_APPS_REPO_PATH=~/ZumbaEnv/
export PATH="${PATH}:${ZUMBA_APPS_REPO_PATH}/onboarding/bin"

# Setup bash autocomplete support for dev commands
source "${ZUMBA_APPS_REPO_PATH}/onboarding/lib/dev-completion.bash"

# Guest setup
export ZUMBA_VBOX_CPU=2
export ZUMBA_VBOX_MEM=4096
export ZUMBA_DEV_MYSQL=True
export ZUMBA_DEV_MONGO=True
export ZUMBA_DEV_ELASTICSEARCH=True