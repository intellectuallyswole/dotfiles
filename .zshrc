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

# source ~/.madelainerc
source ~/zsh/antigen.zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"
# ZSH_THEME="tulloch"

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
ENABLE_CORRECTION="true"

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
plugins=(git mercurial)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export PATH="$PATH:/Users/madelaine/devtools/arcanist/bin:/Users/madelaine/src/Cycript_0.9.502:/Users/madelaine/src/fan.cy::/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/bin/"

# MacPorts Installer addition on 2012-09-20_at_17:19:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Prefer custom-built vim (/usr/local/bin/vim) over /usr/bin/vim
export PATH=/usr/local/bin/:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
# homebrew python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/bin
export PATH=$PATH:/Users/madelaine/devtools/buck/bin/
export PATH=/usr/local/bin/:$PATH
export PATH=/usr/local/ant/bin/:$PATH
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
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# OPAM configuration
. /Users/madelaine/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

eval $(thefuck --alias)

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="$HOME/.yarn/bin:$PATH"
