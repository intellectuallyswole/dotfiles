# Git autocompletion
#source ~/.git-prompt.sh
#zstyle ':completion:*:*:git:*' script ~/.git-completion.zsh
#fpath=(~/.zsh $fpath)
#setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
#precmd () { __git_ps1 "%n" ":%~$ " "|%s" }
# Git autocompletion
#source ~/.git-completion.sh

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

[ -f ~/src/dotfiles/.madelainerc-local ] && source ~/src/dotfiles/.madelainerc-local
source ~/zsh/antigen.zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="madelaine"
ZSH_THEME="tulloch"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git history )

source $ZSH/oh-my-zsh.sh

# User configuration

# MacPorts Installer addition on 2012-09-20_at_17:19:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
# homebrew python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export PATH=/usr/local/bin/:$PATH
export PATH=~/bin:$PATH
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

# Compilation flags

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Set tmux window status title to be vim filename
PROMPT_COMMAND='echo -ne "\033]0;\007"'


[ -f ~/src/whisper-dotfiles/.mdb-whisperrc ] && source ~/src/whisper-dotfiles/.mdb-whisperrc

eval $(thefuck --alias)
