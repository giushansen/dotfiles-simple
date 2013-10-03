# Load custom variables such as Environments variables
if [ -f $HOME/.profile ]; then
 source $HOME/.profile
fi

# Hulkified prompt color
PS1='\[\e[1;32m\]\w \[\e[0m\]\$\[\e[1;37m\] '

# Improve our history
export HISTFILESIZE=10000
export HISTSIZE=10000
shopt -s histappend
export PROMPT_COMMAND='history -a'

# Alias
alias l='ls -lAG'

# Changing directory to code project
function c { cd ~/Sites/$1; }

# Set our default editors
export EDITOR=/usr/bin/vim
export BUNDLER_EDITOR=/usr/local/bin/mvim

eval "$(rbenv init -)";
