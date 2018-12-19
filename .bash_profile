# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

shopt -s checkwinsize

unset USERNAME

#Restrict bash history to unique commands, no duplicates
export HISTCONTROL=erasedups

alias m='less'
alias l='less'
function jk {
  kill -9 %$1
}

SVN_EDITOR=vim
# Tip: make sure you 'export' your variables in order to have them show in env
export SVN_EDITOR

# MacPorts Installer addition on 2012-09-20_at_17:19:00: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH
export PATH=$PATH:/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/bin
export PATH=$PATH:~/devtools/arcanist/bin
export PATH=~/src/bin/:$PATH


# added by Anaconda2 4.1.0 installer
export PATH="/Users/madelaine/src/anaconda2/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:$CUDA_HOME/lib"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export PATH="$CUDA_HOME/bin:$PATH"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home"
