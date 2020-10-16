#
# NOTE!! This file may be a symlink to my dotfiles git repo!!
# ln -s dotfiles/bash_profile $HOME/.bash_profile
#

alias ll='ls -l'

CARGO_BIN=${HOME}/.cargo/bin

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

complete -C /Library/Frameworks/Python.framework/Versions/2.7/bin/aws_completer aws
alias ll='ls -l'
alias l='ls -l'
alias vi='vim'
alias k='kubectl'

# git bash completer
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Personal bin
PATH=$PATH:$HOME/bin

# rust / cargo
PATH=$PATH:${CARGO_BIN}

# added by Anaconda3 4.1.1 installer
#export PATH="//anaconda/bin:$PATH"

# Custom vim build, just use vim from brew
#export PATH=$HOME/bin:${PATH}

# Node versioning changed to use nvm, see install.md
export NVM_DIR="$HOME/.nvm"
. "${NVM_DIR}/nvm.sh"
nvm use 10       # default is node 10.x

# 
# YARN: Might need this at some point
# echo 'export PATH="/usr/local/opt/icu4c/bin:$PATH"' >> ~/.bash_profile
# echo 'export PATH="/usr/local/opt/icu4c/sbin:$PATH"' >> ~/.bash_profile
# 
# # For compilers to find icu4c you may need to set:
# export LDFLAGS="-L/usr/local/opt/icu4c/lib"
# export CPPFLAGS="-I/usr/local/opt/icu4c/include"


# Pickup up brew first
export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/bin:$PATH

# Openssl from brew cask
export PATH=/usr/local/opt/openssl/bin:${PATH}


if [ -d $HOME/sandbox/util ]; then
    export PATH=$PATH:$HOME/sandbox/util
fi

# Sources file $1
source_file() {
  if [ -e ${1} ]; then
    echo "Sourcing setup file ${1}..."
    . ${1}
  else
    echo "WARNING: File ${1} not found."
  fi
}

# Env setup
source_file $HOME/aws_setup.sh
source_file $HOME/export_auth0_client_secret.sh
source_file $HOME/export_github_token.sh
source_file $HOME/testing_credential_decryption_key.sh

# git prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "

# Python
# brew install pyenv; pyenv install 3.9.0; pyenv global 3.9.0
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# JAVA
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# ANDROID studio
# export ANDROID_HOME=$HOME/Library/Android/sdk
# For ADB (android debug bridge (USB))
# PATH=$PATH:/Users/mdostie/Library/Android/sdk/platform-tools/
# export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform_tools
# export ANDROID_NDK_HOME=$HOME/Library/Android/sdk/ndk-bundle
# export PATH=$PATH:$ANDROID_NDK_HOME

export ANDROID_SDK_ROOT="~/Library/Android/sdk" 
export ANDROID_TOOLS=$ANDROID_SDK_ROOT"/platform-tools" 
export PATH=$PATH:$ANDROID_SDK_ROOT:$ANDROID_TOOLS 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"

# Created by `userpath` on 2020-10-15 12:11:17
export PATH="$PATH:/Users/mdos/.local/bin"
