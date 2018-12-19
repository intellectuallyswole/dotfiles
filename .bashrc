#.bashrc
 
# fix long line entry wrapping in bash
#shopt -s checkwinsize
 
# Git autocompletion
source ~/git-completion.bash

source ~/.madelainerc
# THIS IS AWESOME! It will tell you what branch you are on when working in a git repository. Helps keep up good branching practices...
# PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME} ${PWD}\007"'
 
# User specific aliases and functions


# Type in a few chars of a command in history and use arrow (up/down) keys to cycle through all commands that start with the typed in chars.
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward
# Delete word for bash command line (^W, aka Control-W)
# bind "^W":backward-delete-word

# actually just delete a component
stty werase undef
bind "^W":unix-filename-rubout
HISTSIZE=130000 HISTFILESIZE=-1

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="/Users/madelaine/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
