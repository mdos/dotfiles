#
# NOTE!! This file may be a symlink to my dotfiles git repo!!
# ln -s dotfiles/bash_profile $HOME/.bash_profile
#

alias ll='ls -l'

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

complete -C /Library/Frameworks/Python.framework/Versions/2.7/bin/aws_completer aws
alias ll='ls -l'
alias l='ls -l'
alias vi='vim'

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Personal bin
PATH=$PATH:$HOME/bin

# added by Anaconda3 4.1.1 installer
#export PATH="//anaconda/bin:$PATH"

# Custom vim build, just use vim from brew
#export PATH=$HOME/bin:${PATH}

# Use node VER.x, right now either 6 or 8
# $ brew install node@VER
# $ brew unlink --force node@OLDVER
# $ brew link --force node@VER
export NODE_VER=8
PATH="/usr/local/opt/node@${NODE_VER}/bin:${PATH}"
echo "NODE VERSION CONFIGURED TO : ${NODE_VER}"

# ANDROID studio
export ANDROID_HOME=$HOME/Library/Android/sdk
# For ADB (android debug bridge (USB))
PATH=$PATH:/Users/mdostie/Library/Android/sdk/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform_tools
export ANDROID_NDK_HOME=$HOME/Library/Android/sdk/ndk-bundle
export PATH=$PATH:$ANDROID_NDK_HOME

export PATH="/usr/local/sbin:$PATH"

# Sources file $1
source_file() {
  if [ -e ${1} ]; then
    echo "Sourcing setup file ${1}..."
    . ${1}
  else
    echo "ERROR: File ${1} not found."
  fi
}

# Env setup
source_file $HOME/aws_setup.sh
source_file $HOME/export_auth0_client_secret.sh

# git prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
