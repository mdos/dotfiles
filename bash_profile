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

# Use node 6.10.3
PATH="/usr/local/opt/node@6/bin:${PATH}"

# ANDROID studio
export ANDROID_HOME=$HOME/Library/Android/sdk
# For ADB (android debug bridge (USB))
PATH=$PATH:/Users/mdostie/Library/Android/sdk/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform_tools
export ANDROID_NDK_HOME=$HOME/Library/Android/sdk/ndk-bundle
export PATH=$PATH:$ANDROID_NDK_HOME

export PATH="/usr/local/sbin:$PATH"


# git prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]\n$ "

