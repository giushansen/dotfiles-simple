# Load custom variables such as Environments variables
if [ -f $HOME/.profile ]; then
 . $HOME/.profile
fi

PS1='\[\e[1;32m\]\w \[\e[0m\]\$\[\e[1;37m\] '

export HISTFILESIZE=10000
export HISTSIZE=10000
shopt -s histappend
export PROMPT_COMMAND='history -a'
alias l='ls -lAG'

BUNDLER_EDITOR=/usr/local/bin/mvim

eval "$(rbenv init -)";
